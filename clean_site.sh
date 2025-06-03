#!/bin/bash

# Function to process each index.html file
process_file() {
    local file="$1"

    if file "$file" | grep -q 'text'; then
        # Use Perl to delete the unwanted multi-line block
        perl -0777 -pi -e '
            s|<script defer id="bilmur".*?</script>\s*<div id="marketingbar".*?</div>\s*<script type="text/javascript">.*?</script>||gs
        ' "$file"
        echo "Processed: $file"
    fi
}

export -f process_file

# Find and process only files named index.html
find . -type f -name "index*" -exec bash -c 'process_file "$0"' {} \;
