#!/bin/bash

# Iterate over each directory in the current directory
for dir in */; do
  # Remove the trailing slash from the directory name
  package_name="${dir%/}"

  # Run stow for the package
  stow "$package_name"
done
