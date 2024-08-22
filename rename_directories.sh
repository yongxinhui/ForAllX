# #!/bin/bash

# Directory to search
DIRECTORY="Lectures"

# Find all directories that match the pattern Week*Tu
find "$DIRECTORY" -type d -name 'Week*T' | while read -r dir; do
    # Get the parent directory and the base name of the directory
    parent_dir=$(dirname "$dir")
    base_dir=$(basename "$dir")
    
    # Replace Tu with T in the base name
    new_base_dir=$(echo "$base_dir" | sed 's/T/Tu/')
    
    # Create the new directory path
    new_dir="$parent_dir/$new_base_dir"
    
    # Rename the directory
    mv "$dir" "$new_dir"
    
    echo "Renamed '$dir' to '$new_dir'"
done
