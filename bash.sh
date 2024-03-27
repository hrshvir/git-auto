#!/bin/bash

# Build the Docker image
docker build -t testwithgit .

# Function to prompt user for commit message
get_commit_message() {
    read -p "Enter commit message: " message
    echo "$message"
}

# Git commands
git_command_1="git add ."
git_command_2="git commit -m"
git_command_3="git push"

# Execute git commands
eval "$git_command_1"
commit_message=$(get_commit_message)
eval "$git_command_2 '$commit_message'"
eval "$git_command_3"

