#!/usr/bin/env bash

index=(0 1 2 3 4 5 6)
placeholders=(
    '<BANNER>'
    '<REPO NAME>'
    '<GH USERNAME>'
    '<WEBSITE>'
    '<EMAIL>'
    '<YOUR NAME>'
    '<LICENSE YEAR>'
)
details=(
    'This is the banner image in this README'
    'This is the 2 part github url for the repo like: tallguyjenks/this_repo'
    'This is your username on github'
    'This is your personal website'
    'Your contact email'
    'Your actual name (first and last) if you are okay with having that on display'
    'The portion of the license file (defaults to included Apache 2.0 where you include the year)'
)

# Loop through placeholders
for i in "${!index[@]}"; do

    # Prompt user for replacement value
    echo "${placeholders[$i]}: ${details[$i]}"
    read -p "Enter replacement value for ${placeholders[$i]}: " replacement_value

    # Replace all instances of placeholder with replacement value
    git grep -l "${placeholders[$i]}" -- ':!setup.sh' | xargs sed -i '' "s/${placeholders[$i]}/$replacement_value/g"

done

echo "Setup complete! You can now delete the setup.sh file."