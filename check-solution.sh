#!/bin/bash

# Check if the path is provided as a parameter
if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <parent_directory>"
  exit 1
fi

parent_directory="$1"

exercise_directory="$parent_directory/exercise"
solution_directory="$parent_directory/solution"

# Check if the "exercise" directory exists
if [ -d "$exercise_directory" ]; then
  # Remove the "exercise" directory and its contents
  rm -r "$exercise_directory"
fi

# Copy the "solution" directory to "exercise"
if [ -d "$solution_directory" ]; then
  cp -r "$solution_directory" "$exercise_directory"
fi