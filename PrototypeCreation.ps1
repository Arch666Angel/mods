# This script looks for prototypes created in data-updates or data-final-fixes.

# ==============================
# CONFIGURATION
# ==============================
$sourcePath = $PSScriptRoot
$scanned = @{}

# ==============================
# FUNCTIONS
# ==============================
function Scan-LuaFile($filePath, $modFolder) {
    if ($scanned[$filePath]) { return @() }
    $scanned[$filePath] = $true

    if (!(Test-Path $filePath)) { return @() }

    $lines = Get-Content $filePath
    $entities = @()

    for ($i = 0; $i -lt $lines.Length; $i++) {
        $line = $lines[$i]

        # Follow require("...") calls
        if ($line -match 'require\(["'']([^"'']+)["'']\)') {
            $reqPath = $matches[1] -replace '\.', '\\'
            $reqFile = Join-Path $modFolder ($reqPath + ".lua")
            $entities += Scan-LuaFile $reqFile $modFolder
        }

        # ------------------------------
        # data:extend block
        # ------------------------------
        if ($line -match 'data:extend\s*\(\s*{') {
            $blockLines = @()
            $braceCount = 1
            $j = $i + 1
            while ($j -lt $lines.Length -and $braceCount -gt 0) {
                $l = $lines[$j]
                $blockLines += $l
                $braceCount += ($l -split '{').Count - 1
                $braceCount -= ($l -split '}').Count - 1
                $j++
            }

            # Capture all objects with "type" and "name"
            $inObject = $false
            $skipChildren = $false
            $skipBraceCount = 0

            foreach ($l in $blockLines) {

                # Detect start of ingredients/results block
                if (-not $skipChildren -and $l -match '^\s*(ingredients|results)\s*=\s*{') {
                    $skipChildren = $true
                    # Count initial { in this line
                    $skipBraceCount = ($l -split '{').Count - 1
                    $skipBraceCount -= ($l -split '}').Count - 1
                    continue
                }

                # If skipping, track braces until block ends
                if ($skipChildren) {
                    $skipBraceCount += ($l -split '{').Count - 1
                    $skipBraceCount -= ($l -split '}').Count - 1
                    if ($skipBraceCount -le 0) {
                        $skipChildren = $false
                    }
                    continue
                }

                # Normal object parsing
                if ($l -match 'type\s*=\s*"([^"]+)"') {
                    $currentType = $matches[1]
                    $inObject = $true
                }

                if ($inObject -and $l -match 'name\s*=\s*"([^"]+)"') {
                    $currentName = $matches[1]
                    $entities += "${currentType}: ${currentName}"
                    $inObject = $false
                }
            }
        }
    }

    return $entities
}

# ==============================
# MAIN
# ==============================
# Scan all mods: data-updates.lua and data-final-fixes.lua recursively
$files = @()
$files += Get-ChildItem -Path $sourcePath -Recurse -Filter "data-updates.lua" -File
$files += Get-ChildItem -Path $sourcePath -Recurse -Filter "data-final-fixes.lua" -File

foreach ($file in $files) {
    $modFolder = Split-Path $file.Directory -Leaf
    $entities = Scan-LuaFile $file.FullName $modFolder
    if ($entities.Count -gt 0) {
        Write-Output "`n-----$modFolder-----"
        $entities | Sort-Object -Unique | ForEach-Object { Write-Output $_ }
    }
}