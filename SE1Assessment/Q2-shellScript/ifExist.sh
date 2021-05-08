#!/bin/bash

echo "Enter the file or directory Name:"
read dirOrFileName

echo "Enter the directory you wanna search in:"
read searchDir

searchResult=$(find $searchDir -name "$dirOrFileName")
echo $searchResult

if [ -z $searchResult ]
then
  echo "$dirOrFileName isn't found in $searchDir, creating a new one provide the type (f/d)?"
  read type

  if [[ $type = "f" ]]
  then
    touch "$searchDir/$dirOrFileName"
    echo "File $dirOrFileName successfully created at $searchDir."
  else
    mkdir "$searchDir/$dirOrFileName"
    echo "Directory $dirOrFileName successfully created at $searchDir."
  fi
else
  echo "$dirOrFileName found at :: $searchResult"
fi
