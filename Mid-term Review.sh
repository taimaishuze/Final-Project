#!/bin/bash
# Vang Lee

# Week 8 CSCI 2461 Computer Networking 2 - Linux

# menu

press_enter()
{
    echo -en "\nPress ENTER to continue"
    read
    clear
}

selection=
until [ "$selection" = "0" ]; do
    echo "
    Program Menu
    1 - Back to basics
    2 - Devices
    3 - dmesg
    4 - Update, restart, shutdown, help

    0 - exit program
"
    echo -n "Enter selection: "
    read selection
    echo ""
    case $selection in
        1) echo "Listing directories....."; echo ""; ls -l; sleep 2; echo "";
	echo "Viewing mounted filesystem....."; echo ""; df ; sleep 2; echo "";
	echo "Current location....."; echo ""; pwd; sleep 2; echo "";
	echo "Making SAMPLE directory....."; sudo mkdir SAMPLE; sleep 2; echo "";
	echo "Checking for SAMPLE directory....."; echo ""; ls -l; sleep 3; echo "Found it!"; sleep 3; echo "";
	echo "Removing SAMPLE directory....."; echo ""; sudo rmdir SAMPLE; sleep 3; echo "";
	echo "Checking to see if SAMPLE is removed......"; echo ""; ls -l; sleep 3; echo "Gone!"; sleep 3; echo "";
	echo "You can create a text file and put it into a directory in same manner."; sleep 2;
	echo "This is just some of the basics.  Let's try the other options."; echo ""; sleep 2; press_enter ;;
        2) echo "Listing devices....."; echo ""; cd /dev; ls -l; cd; sleep 2; echo "";
	echo "Free memory....."; echo ""; free; sleep 2; echo "";
	echo "Partitions....."; echo ""; cd /proc && cat /proc/partitions; sleep 2; cd; echo "";
	echo "Using dd to create new_file......"; echo ""; dd if=/dev/zero of=new_file bs=1024 count=1; sleep 2; echo "";
	echo "Checking for new_file......"; echo ""; ls -l; sleep 3; echo "Found it!"; sleep 3; echo "";
	echo "Removing new_file....."; echo ""; rm new_file; sleep 2; echo "";
	echo "Checking to see if new_file is removed....."; echo ""; ls -l; sleep 3; echo "Gone!"; sleep 3; echo "";
	echo "These are some device commands that I've learned.  Let's try other options."; echo ""; sleep 2; press_enter ;;
	3) echo "Displaying system info....."; echo ""; sudo dmesg; sleep 2; echo "";
	echo "Displaying CPU information....."; echo ""; sudo dmesg | grep -i CPU; sleep 2; echo "";
	echo "Displaying USB information....."; echo ""; sudo dmesg | grep -i USB; sleep 2; echo "";
	echo "dmesg is best used with pipe less command.  Let's move on to another option"; sleep 2; press_enter ;;
	4) echo "Update using sudo apt-get update"; echo ""; sleep 2;
	echo "Turn on firewall using sudo ufw enable"; echo ""; sleep 2;
	echo "Restart your OS with sudo shutdown -r now or set a countdown option"; echo ""; sleep 2;
	echo "Shutdown your computer with sudo shutdown now or init 0"; echo ""; sleep 2;
	echo "Try and restart or shut down your computer from the command line next time"; echo ""; sleep 2;
        echo "For further help, use the 'man' command"; echo ""; sleep 2; press_enter ;;
	0) exit ;;
        *) echo "Please select 1, 2, 3, or 4 to view contents (0 to exit)"; press_enter
    esac
done
