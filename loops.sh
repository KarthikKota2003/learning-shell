#!/bin/bash

# We are practicing loops here

# for number in {1..100}
# do
#     echo $number
# done

# for package in $@
# do
#     echo "We are going to install $package"
# done

logs_folder=/var/log/learning-shell
log_file=${logs_folder}/output.log

mkdir -p ${logs_folder}

echo "Script execution started at: $(date +"%Y-%m-%d %H:%M:%S")" | tee -a $log_file

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

for package in $@
do 
    echo "Proceeding to download $package"
    dnf install $package -y &>> $log_file
    #Calling validate function
    validate $? "$package installation"
done

echo "Script execution completed at: $(date +"%Y-%m-%d %H:%M:%S")" | tee -a $log_file