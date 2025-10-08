-- Taken from lovely's library to remove redundant prerequisites
-- Given to angels mod to use, do not alter this without permission
local LSlib_TechCleanup = {}
if angelsmods.industries.tech then
  function LSlib_TechCleanup.isEnabled(technologyName)
    if not data.raw["technology"][technologyName] then
      return false
    end
    if data.raw["technology"][technologyName].enabled == nil then
      return true
    end
    return data.raw["technology"][technologyName].enabled
  end

  function LSlib_TechCleanup.isHidden(technologyName)
    if not data.raw["technology"][technologyName] then
      return true
    end
    if data.raw["technology"][technologyName].hidden == nil then
      return false
    end
    return data.raw["technology"][technologyName].hidden
  end

  function LSlib_TechCleanup.getAllPrerequisites(technologyName)
    if not data.raw["technology"][technologyName] then
      return
    end
    if not data.raw["technology"][technologyName].prerequisites then
      return
    end

    if LSlib_TechCleanup.prereqcache[technologyName] then
      return LSlib_TechCleanup.prereqcache[technologyName]
    else
      -- temporary fill in the prerequisites to prevent stack overflow due to loops in technology tree
      LSlib_TechCleanup.prereqcache[technologyName] = {}

      local prerequisites = {} -- all prerequisites for this tech
      for _, prerequisiteName in pairs(data.raw["technology"][technologyName].prerequisites) do
        LSlib_TechCleanup.prereqcache[technologyName][prerequisiteName] = true

        -- now get the prerequisite of all the prerequisites and add those as well
        local prePrerequisites = LSlib_TechCleanup.getAllPrerequisites(prerequisiteName)
        for prePrerequisiteName, _ in pairs(prePrerequisites or {}) do
          LSlib_TechCleanup.prereqcache[technologyName][prePrerequisiteName] = true
        end
      end

      -- now we have all prerequisites
      return LSlib_TechCleanup.prereqcache[technologyName]
    end
  end

  function LSlib_TechCleanup.makePrerequisitesContiguous(technologyName)
    if not data.raw["technology"][technologyName] then
      return
    end
    if not data.raw["technology"][technologyName].prerequisites then
      return
    end

    -- STEP 1: obtain all the prerequisites
    local prerequisites = {}
    for _, prerequisiteName in pairs(data.raw["technology"][technologyName].prerequisites) do
      prerequisites[prerequisiteName] = true
    end

    -- STEP 2: remove all prerequisites
    data.raw["technology"][technologyName].prerequisites = {}

    -- STEP 3: add all prerequisites contiguously
    for prerequisiteName, _ in pairs(prerequisites) do
      table.insert(data.raw["technology"][technologyName].prerequisites, prerequisiteName)
    end
  end

  function LSlib_TechCleanup.removeDuplicatePrerequisites(technologyName)
    if not data.raw["technology"][technologyName] then
      return
    end
    if not data.raw["technology"][technologyName].prerequisites then
      return
    end

    -- STEP 1: obtain all the prerequisites once (so no duplicates)
    local prerequisites = {}
    local containDuplicates = false
    for _, prerequisiteName in pairs(data.raw["technology"][technologyName].prerequisites) do
      if prerequisites[prerequisiteName] then -- already contains one, we found a duplicate
        containDuplicates = true
      else
        prerequisites[prerequisiteName] = true
      end
    end

    if containDuplicates then
      -- STEP 2: if we have duplicates, we create a new prerequisite table without duplicates
      local newPrerequisites = {}
      for prerequisiteName, _ in pairs(prerequisites) do
        table.insert(newPrerequisites, prerequisiteName)
      end

      -- STEP 3: we use this newly created prerequisite table in the technology tree
      data.raw["technology"][technologyName].prerequisites = util.table.deepcopy(newPrerequisites)
    end
  end

  function LSlib_TechCleanup.removeHiddenPrerequisites(technologyName)
    if not data.raw["technology"][technologyName] then
      return
    end
    if not data.raw["technology"][technologyName].prerequisites then
      return
    end

    -- STEP 1: obtain all the valid prerequisites (no hidden or disabled ones)
    local newPrerequisites = {}
    local containHidden = false
    for _, prerequisiteName in pairs(data.raw["technology"][technologyName].prerequisites) do
      if LSlib_TechCleanup.isHidden(prerequisiteName) or (not LSlib_TechCleanup.isEnabled(prerequisiteName)) then
        containHidden = true
      else
        table.insert(newPrerequisites, prerequisiteName)
      end
    end

    if containHidden then
      -- STEP 2: if we have hidden duplicates, we leave only the non-hidden ones
      data.raw["technology"][technologyName].prerequisites = util.table.deepcopy(newPrerequisites)
    end
  end

  function LSlib_TechCleanup.removeRedundantPrerequisites(technologyName)
    if not data.raw["technology"][technologyName] then
      return
    end
    if not data.raw["technology"][technologyName].prerequisites then
      return
    end

    -- we will check for all prerequisites
    local oldPrerequisites = util.table.deepcopy(data.raw["technology"][technologyName].prerequisites) -- make it read only
    local removedPrerequisites = {}
    for _, prerequisiteName in pairs(oldPrerequisites) do
      -- STEP 1: obtain the prerequisites of a prerequisite
      local prePrerequisites = LSlib_TechCleanup.getAllPrerequisites(prerequisiteName) or {}

      -- STEP 2a: now we check if any prerequisite of the tech is redundant because
      --          it could be a prerequisite of this prerequisite
      for redundantPrerequisiteIndex, redundantPrerequisiteName in pairs(oldPrerequisites) do
        if
          redundantPrerequisiteName ~= prerequisiteName -- no need to check itself
          and not removedPrerequisites[redundantPrerequisiteName] -- not already deleted
          and prePrerequisites[redundantPrerequisiteName]
        then -- must be redundant
          -- STEP 2b: remove the technology prerequisite if the prerequisite is a prerequisite of another technology prerequisite
          data.raw["technology"][technologyName].prerequisites[redundantPrerequisiteIndex] = nil -- remove it
          removedPrerequisites[redundantPrerequisiteName] = true
        end
      end
    end
  end

  function LSlib_TechCleanup.removeAllRedundantPrerequisites()
    if not LSlib_TechCleanup.prereqcache then
      LSlib_TechCleanup.prereqcache = {}
    end

    -- STEP 1: we remove duplicate entries in the technology table
    for technologyName, technology in pairs(data.raw["technology"]) do
      LSlib_TechCleanup.removeDuplicatePrerequisites(technologyName)
    end

    -- STEP 2: we remove hidden entries in the technology table
    for technologyName, technology in pairs(data.raw["technology"]) do
      LSlib_TechCleanup.removeHiddenPrerequisites(technologyName)
    end

    -- STEP 3: remove the redundant entries
    for technologyName, technology in pairs(data.raw["technology"]) do
      LSlib_TechCleanup.removeRedundantPrerequisites(technologyName)
    end

    -- STEP 4: make the prerequisites contiguous again
    for technologyName, technology in pairs(data.raw["technology"]) do
      LSlib_TechCleanup.makePrerequisitesContiguous(technologyName)
    end

    LSlib_TechCleanup.prereqcache = nil
  end

  LSlib_TechCleanup.removeAllRedundantPrerequisites()
  LSlib_TechCleanup = nil -- limit use to this file only
end
