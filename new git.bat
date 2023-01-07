@echo off

echo Enter the URL of the existing repository:
set /p repo_url=

echo Enter the URL of the new repository (without .git):
set /p new_repo_url=

echo Cloning existing repository...
git clone %repo_url%

cd %repo_name%

echo Removing existing Git configuration...
rm -rf .git

echo Initializing new Git repository...
git init

echo Adding files to new repository...
git add .

echo Committing changes...
git commit -m "Initial commit"

echo Adding new remote repository...
git remote add origin %new_repo_url%.git

echo Pushing changes to new repository...
git push -u origin main

echo Done!
