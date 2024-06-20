#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "project name must be passed as first parameter"
    exit 1
fi

project_name="$1"

# Check if the directory already exists
if [ -d "$directory_name" ]; then
    echo "Error: Directory '$directory_name' already exists."
    exit 1
fi

mkdir "$project_name"
echo "Directory '$project_name' created successfully."

cd "./$project_name"
mkdir src pkg bin
go mod init "$project_name"
touch main.go
cd ..
