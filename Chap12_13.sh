#!/bin/bash
# Vang Lee

# Week 13 CSCI 2461 Computer Networking 2 - Linux
# Chapter 12 and 13

echo "Note: None of the following lines will run since they are all proceeded with echo"
echo "user must provide additional information in order to modify the scripts."
echo ""
echo "Chapter 12 notes"
echo ""
echo "The following command copies files from one node to another node on the same network."
echo "python -m SimpleHTTPServer"
echo ""
echo "Use the following command to move an entire directory "
echo "scp -r"
echo "or better yet, use tar in a pipeline:"
echo "tar cBvf - directory | ssh remote_host tar xBvpf -"
echo "where directory and remote_host needs to be provided."
echo ""
echo "rsync basics"
echo "Copy a group of files to your home directory on host"
echo "rsync file1 file2...host:"
echo "where file1, file2, and host information needs to be provided"
echo ""
echo "The following command will exclude files and directories during transfer operation."
echo "We will use src and host as examples.  We will exclude anything with .git"
echo ""
echo "rsync -a --exclude=.git src host:"
echo ""
echo "Use rsync to limit bandwidth on your network with the following command:
echo "dir host and destination_dir must be specified by user"
echo ""
echo "rsync --bwlimit=10000 -a dir host: destination_dir"
echo ""
echo "Chapter 13 notes"
echo ""
echo "Essential goals to keep in mind when creating startup files for other users"
echo " * Simplicity
echo " * Readability
echo ""
echo "Good reasons for changing startup files:"
echo " * You want to change the default prompt"
echo " * You need to accommodate some critical locally installed software."
echo " * Your existing startup files are broken"
