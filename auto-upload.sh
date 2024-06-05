#!/bin/bash
# Pull the latest changes from the remote repository
git pull origin main

# Add all changes to the staging area
git add .

# Get the commit message as the first argument
commit_message="$1"

# Commit the changes with the provided message
git commit -m "$commit_message"

# Push the changes to the remote repository (assuming the remote is named 'origin' and the branch is 'main')
git push origin main