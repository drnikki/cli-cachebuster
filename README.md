cli-cachebuster
===============

This is a really simple script that will recursively search a folder and replace all instances of a string with a value you specify. 

The very specific usecase is for when you are deploying to a production server behind a cache that you don't have access to clear.  As I'm using it, it will append a query string to the end of js, css, jpg, etc files that is equal to the version number of the release.

The script is called as part of a larger (capistrano) build in which a tag number is passed in. 

Usage
-----
To use, just clone the repository, make the script executable, change the paths and placeholders inside of it to work with your situation, and pass into it the tag number that you need.

./replace.sh 0.5.1
