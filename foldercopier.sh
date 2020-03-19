foldercopier.sh
#This file is still under construction===========================================

#This script simply copies files from the previous workshop to the newest one.
#All you have to do is replace the default file ($Nothing) with the older one.

#----
read "This is the default file/ variable, it does not contain anything!" Nothing
#----

#This gives permissions to read, write and execute into the directory.
chmod a+rwx /c/CSP2101

#Create file (name it after the workshops).
read -p "Please enter the name of the folder:" copyfile

#Makes the file directory.
mkdir "$copyfile"

#Move file into the workshop directory.
mv "$copyfile" /c/CSP2101/workshop

cp -r "$Nothing" "$copyfile"