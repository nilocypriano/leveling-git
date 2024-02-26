#!/bin/bash
error_log() {
	echo "$date '%Y-%m-%d %H:%M:%S') - $1" >> "$log_file"
}

if [ ! -d "logs"]; then
	mkdir logs 
fi

log_file = "logs/log.txt"
touch "$log_file"

echo "Welcome!"

read -p "Insert your name: " name

if [${#name} -lt 2]; then
	echo "Name must have at least 2 characters."
	exit 1
fi

if [ -z "$name"]; then
	echo "Name can't be empty."
	exit 1
fi

if [[ ! "$name" =~ ^[a-zA-ZÀ-ú\s]+$ ]]; then
	echo "Name must contain only alphabetic characters."
	exit 1
fi

read -p "Insert your age: " age

if [ -z "$age"]; then
	echo "Age can't be empty."
	exit 1
fi

echo "The user '$name' reported being '$age' years old."