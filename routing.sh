#!/bin/bash
# Vang Lee

# Week 12 CSCI 2461 Computer Networking 2 - Linux
# Chapter 11

# Short Summary on Routing (My opinion)

# First: Let's define IP Routing
# IP Routing is the process by which host with multiple net work connections deciode where to deliver IP datagrams it
# has received.  (http://wiki.tldp.org/Linux_Networking_HOWTO/Configuration_Information/Routing)

# Routing usually happens on the network layer of the OSI model.  This is where the router sends packets to other routers
# by use of a routing table within the router itself.  The list consists of source and destination IP addresses.  These
# IP addresses are either assigned dynamically by the router itself or statically by a network administrator.  When a 
# datagram is received, the destination IP address is examined against the IP addresses on the routing table.  If a match
# is found, it is forwarded to the specific interface.  Otherwise, if the destination IP address is not in the routing
# table, it is forwarded the next hop or until it is not located.  In which case, the datagram is dropped.
