#!/bin/bash
# Vang Lee

# Week 12 CSCI 2461 Computer Networking 2 - Linux
# Chapter 11

# tcpdump

# tcpdump is a powerful tool used by security professionals and network administrators who analyze network traffic.  It's
# also a useful tool to understand TCP/IP when referring to computer networking.  Below are some of the options used
# along with tcpdump to filter out specific network traffic.

# -i any: Listen to all interfaces just to see if you're seeing any traffic.
# -i eth0: Listen to the eth0 interface.
# -D: Show the list available interfaces
# -n: Dont resolve hostnames.
# -nn: Don't resolve hostnames or port names.
# -q: Be less verbose (more quiet) with your output.
# -t: Give human-readable timestamp output.
# -ttt: Give maximally human-reable timestamp output.
# -X: Show the packet's contents in both HEX and ASCII.
# -XX: Same as -X, but also shows the ethernet header.
# -v, -vv, -vvv: Increase the amount of packet information yuou get back.
# -c: Only get x number of packets and then stop.
# -s: Define the snaplength(size) of the capture in bytes.  Use -s0 to get everything, unless you are intentionally
#     capturing less.
# -S: Print absolute sequence numbers.
# -e: Get the ethernet header as well.
# -q: Show less protocol information.
# -E: Decript IPSEC traffic by providing an encryption key.

# Expressions - Allow you to trim out various types of traffic and find exactly what you're looking for.
# * Types of options are: host, net, and port.
# * Direction lets you do src, dst, and combinations thereor.
# * Proto(col) lets you designate: tcp, udp, icmp, ah, and many more.
