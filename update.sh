# Take the user's string argument as the commit message
# Will only update index.md

git add index.md
git commit -m "$1"
git push