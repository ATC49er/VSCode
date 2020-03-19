foldermaker.sh

#!/bin/bash
#This reads what is inputted by the user and stores that variable.
read -p "Type the name of the folder that you would like to create:" folderName

#This makes the directory that the user wants.
mkdir "$folderName"

#This lists everything within the folder.
ls -a "$folderName"

#This reads what is inputted by the user and stores it into a password file, called "secret.txt"
read -p "Type the secret password for the file:" psswrd

#This gives permissions to read, write and execute into the directory.
chmod a+rwx /c/CSP2101

#This echos the password into the txt file.
echo $psswrd >secret.txt

#This moves the secret.txt file into the folder the user creates.
mv secret.txt /c/CSP2101/$folderName

#This lists what is inside the folder
ls -a "$folderName"