#!/bin/bash

#Storing output of execution sequence into logs file

#Here we are trying to install nginx and mysql packages through shell scripting

logs_folder=/var/log/learning-shell
log_file=${logs_folder}/output.log

mkdir -p ${logs_folder}

user_id=$(id -u)

if (($user_id != 0)); then
echo "User is not root user, try with user having sudo access" | tee -a $log_file
exit 1
else
echo "User is root user, proceeding to download packages..." | tee -a $log_file
fi

# Function to validate if a package is installed or not
validate(){
    if (($1 != 0)); then
        echo "$2 is failed" | tee -a $log_file
        # exit 1 # this will stop the whole script execution at the first failed package installation
    else
        echo "$2 is success" | tee -a $log_file
    fi
}

# Placing dummy packages names here to check non-exiting nature of shell script

echo "Proceeding to download nginx"

dnf install nginxx -y &>> $log_file

#Calling validate function
validate $? "Nginx installation"

dnf install mysqll -y &>> log_file

#Calling validate function
validate $? "Mysql installation"
