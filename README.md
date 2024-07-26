# UPEESCESS

Enumerate WordPress users by leveraging the /author/<number> endpoint. 

![Screenshot](https://github.com/volksec/UPEESCESS/blob/main/example.png?raw=true)

This script follows HTTP redirects to identify valid user profiles on a WordPress site.

Features:

- Enumerates WordPress users efficiently without the need for external tools like WPScan.
- Follows HTTP redirects to detect valid author pages.
- Displays user IDs and names if found.

## Usage

1. Clone the repository:

    ```bash
    git clone https://github.com/volksec/UPEESCESS.git
    cd UPEESCESS
    ```

2. Make the script executable:

    ```bash
    chmod +x UPEESCESS.sh
    ```

3. Run the script with the target domain or IP:

    ```bash
    ./UPEESCESS.sh <target>
    ```
    
4. Example:

    ```bash
    ./UPEESCESS.sh example.com
    ```
