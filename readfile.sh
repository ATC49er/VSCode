readfile.sh

#Enter random comment.
read -p "Please enter any type of message or comment:" randcmt

#Moves input into a file called secret.txt.
echo "$randcmt" >secret.txt

#Reads secret.txt.
cat -A secret.txt