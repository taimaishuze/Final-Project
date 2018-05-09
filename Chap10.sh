#!/bin/bash
# Vang Lee

# Week 11 CSCI 2461 Computer Networking 2 - Linux
# Chapter 11

cd ..

# Change permissions so that script will run.  chmod 700 also does the same thing.
echo "Changing permissions on Chap10.sh............."
chmod +rx ./Chap10.sh
sleep 3

# The "*" serves as a wildcard character to help with searching for key letters or phrases
# when you can't remember the exact letters or phrases.
echo "using wildcard character................"
grep r.*t /etc/passwd
echo ""
sleep 3

# Single quotes are best used when applying literals.  Double quotes expand any variables within the double quotes
# The following lines are applying the single and double quotes.
sleep 2
echo "single quotes..........."
echo 'blah blah blah * blah blah blah: $PATH'
echo ""
sleep 3
echo "double quotes..........."
echo "blah blah blah * blah blah blah: $PATH"
sleep 2
echo ""
echo "Notice the difference?  Moving on.........."
echo ""
sleep 3

echo "This next section kind of surprised me.  Using a backslash right before a single quote actually eliminated"
echo "having to use double quotes before and after the echo statement."
echo ""
sleep 2
echo "I don\'t like yada yada yada blah blah blah......."
echo ""
sleep 2

echo "another example..........."
echo ""
sleep 2
echo 'this isn'\''t a forward slash: \ yada yada yada'
echo ""
sleep 3

