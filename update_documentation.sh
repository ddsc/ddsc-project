#!/bin/bash
bin/sphinx
cp -r doc/build/html/* ../ddsc.github.com
cd ../ddsc.github.com
git add -u
git commit -m "Automatically updated documentation"
git push
echo
echo
echo "If there are new files, add them by hand."
git status
