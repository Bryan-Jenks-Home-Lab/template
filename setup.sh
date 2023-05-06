#!/usr/bin/env bash

# List of placeholders to replace
placeholders=( "<BANNER>" "<REPO NAME>" "<GH USERNAME>" "<WEBSITE>" "<EMAIL>" "<YOUR NAME>" "<LICENSE YEAR>" )

# Loop through placeholders
for placeholder in "${placeholders[@]}"; do

  # Prompt user for replacement value
  read -p "Enter replacement value for ${placeholder}: " replacement_value

  echo "Replacing $placeholder with $value"

  # Replace all instances of placeholder with replacement value
  git grep -l "${placeholder}" | xargs sed -i "s/${placeholder}/${replacement_value}/g"

  # Find and replace recursively in all files in repository
#   find . -type f -not -path './.git/*' -exec sed -i "s/$placeholder/$value/g" {} +

done
