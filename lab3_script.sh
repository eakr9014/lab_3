#!/bin/bash
# Authors : Ean Kramer
# Date: 9/9/2019

#Problem 1 Code:
echo "Input a file name"
read filename
echo "Enter a RegEx"
read regex
grep $regex $filename
#the above searches for user input for a filename and regex to run a grep
#on said file.

#Problem 2 Code:
egrep -c [0-9]{3}-[0-9]{3}-[0-9]{4} regex_practice.txt
#Makes sure 3 characters are followed by a dash, another 3 and then a dash,
#and then a final four characters.

#Problem 3 Code:
echo "This is the number of email addresses in the file!"
egrep -c .+@.+[.].+ regex_practice.txt
#makes sure a string has any character one or more times followed by an @ with some other
#character one or more time followed by a dot with any other character one or more times. 
#This is the pattern of email address.

echo "Here is a list of all the phone numbers in the 303 area"
egrep -o ^303-[0-9]{3}-[0-9]{4} regex_practice.txt
#same as problem 2 except that we pattern match the initial 303.

echo "Outputting all the geocities emails to a new file named email_results.txt"
egrep .+@geocities.com regex_practice.txt >> email_results.txt
#pattern match on any one or more characters prefacing @geocities.com and send results
#to a new text file.

