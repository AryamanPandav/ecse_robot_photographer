This folder contains files that need to be added to various locations
in the Linux filesystem. In some cases, existing files need to be
replaced with the files contained in this folder.

***
This README.txt file contains instructions of how to perform these
additions/replacements.
***

Filename: email-ip
Instructions:
  - Copy this file into /etc/network/if-up.d
  - Modify the permissions of this file to 777

Filename: bashrc-additions
Instructions:
  - Open the ~/.bashrc file using a text editor of your chouce
  - Add the following line to the bottom of this file
    source ~/navigation-srp/bashrc-additions

