# #!/bin/bash

# Directory to search
DIRECTORY="Lectures"

# Find all files that match the pattern Week*Tu.*
find "$DIRECTORY" -type f -name 'Week*Th.*' | while read -r file; do
    # Get the directory name and the base name of the file
    dir=$(dirname "$file")
    base=$(basename "$file")
    
    # Replace Tu with T in the base name
    new_base=$(echo "$base" | sed 's/Th/_2/')
    
    # Create the new file path
    new_file="$dir/$new_base"
    
    # Rename the file
    mv "$file" "$new_file"
    
    echo "Renamed '$file' to '$new_file'"
done
