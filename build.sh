#!/bin/bash

function process() {
  dirname="$(cd "$(dirname "$1")"; pwd -P)/$(basename "$1")"
  ignores="build.sh modportal/ .DS_Store README.md .git/ .gitignore"
  version=$(grep '"version"' "${dirname}/info.json"| cut -d ":" -f2 | sed 's/[", \r\n]//g')
  modname=$(grep '"name"' "${dirname}/info.json"| cut -d ":" -f2 | sed 's/[", \r\n]//g')
  release="${modname}_${version}"
  cmd="rsync -a \"${dirname}/\" \"${dirname}/../${release}/\""

  for ignore in $ignores
  do
      cmd+=" --exclude ${ignore}"
  done

# Insert version and date if not defined
  if [ -f "${dirname}/changelog.txt" ]; then
    date=`date +"%d.%m.%Y"`
    awk '!f && /Date:\s*\?+/ {$0="Date: '"${date}"'"; f=1}1' "${dirname}/changelog.txt" > tmp.txt
    mv tmp.txt "${dirname}/changelog.txt"
    awk '!f && /Version:\s*\?+/ {$0="Version: '"${version}"'"; f=1}1' "${dirname}/changelog.txt" > tmp.txt
    mv tmp.txt "${dirname}/changelog.txt"
  fi
  $(eval $cmd)
  cd "${dirname}/../"
  zip -q -r "${release}.zip" "${release}/"
  rm -rf "${release}/"
  echo "Released ${release}"
}

dirs=$1
if [ -z "${dirs}" ]; then
  dirs="*"
fi

for d in $(ls -d ${dirs}/); do
  process "$d"
done
