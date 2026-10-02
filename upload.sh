#!/bin/bash
echo "Uploading changes to GitHub..."
git add .
# Check if there are any changes to commit
if git diff-index --quiet HEAD --; then
    echo "No changes to upload. Your website is already up to date!"
else
    git commit -m "Auto-update website: $(date '+%Y-%m-%d %H:%M:%S')"
    git push origin main
    echo "Done! Changes should appear on your live website in a minute."
fi
