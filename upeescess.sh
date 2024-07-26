#!/bin/bash

echo -e "
\e[34m _    _ _____  ______ ______  _____  _____  ______  _____   _____ 
| |  | |  __ \|  ____|  ____|/ ____|/ ____||  ____|/ ____| / ____|
| |  | | |__) | |__  | |__  | (___ | |     | |__  | (___  | (___  
| |  | |  ___/|  __| |  __|  \___ \| |     |  __|  \___ \  \___ \ 
| |__| | |    | |____| |____ ____) | |____ | |____ ____) | ____) |
 \____/|_|    |______|______|_____/ \_____||______|_____/ |_____/ 

UPEESCESS by volksec
\e[0m"

if [ -z "$1" ]; then
    echo "Usage: $0 <WordPress URL>"
    exit 1
fi

WP_URL=$1

check_user() {
    local user_id=$1
    local response=$(curl -s -L -o /dev/null -w "%{url_effective}" "${WP_URL}/?author=${user_id}")

    if [[ "$response" =~ "/author/" ]]; then
        local user_name=$(echo "$response" | awk -F"/author/" '{print $2}' | awk -F"/" '{print $1}')
        echo "User found: ID ${user_id}, Name: ${user_name}"
    else
        echo "User ${user_id} not found"
    fi
}

for user_id in {1..20}; do
    check_user $user_id
done

echo "Enumeration complete."
