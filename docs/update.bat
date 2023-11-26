@echo off
set REPO_DIR=%CD%
set SOURCE_DIR=%REPO_DIR%\_drafts
set TARGET_DIR=%REPO_DIR%\_posts
set today=%date:~0,4%/%date:~5,2%/%date:~8,2%

git pull
jekyll build --destination docs && git add . && git commit -m "Update articles %today%" && git push