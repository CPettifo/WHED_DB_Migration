# Database Migration Tool

This command-line tool facilitates database migration tasks for MySQL databases. It allows users to select and execute specific migration scripts through an interactive interface. A prefix of 'cosc320' to indicate the university project in front of the table names. For detailed information about schema changes, please review the Gap Analysis Document of this project.

## Installation

1. Clone this repository:

    ```
    git clone https://github.com/CPettifo/WHED_DB_Migration.git
    cd python-scripts
    ```

2. Install required dependencies:
    ```
    pip install -r requirements.txt
    ```

## Setup

1. Create a `.env` file in the root directory of the project.
2. Add your database credentials to the `.env` file:
   DB_HOST=db_host,
   DB_PORT=db_port,
   DB_NAME=db_name,
   DB_USER=db_user,
   DB_PASSWORD=db_password,
   SSL_CA_PATH=ssl_ca_path,

Download the SSL Certificate from this web page: https://learn.microsoft.com/en-us/azure/mysql/flexible-server/how-to-connect-tls-ssl

## Usage

1. Run the tool:

    ```
    python3 connection_db.py
    ```

2. The main menu will display available migration tasks.

3. Enter the number corresponding to the desired task.

4. A list of migration files for the selected task will be displayed, each with a number.

5. Enter the number of the file you want to execute.

6. After execution, you'll return to the file list.

7. To return to the main menu, enter `0`.

8. To exit the program, enter `e`.

## Notes

-   Ensure your `.env` file is properly configured before running migrations.
-   Back up your database before running any migration scripts.
-   Review migration scripts before execution to understand their impact.

## Requirements

-   Python 3.8+
-   MySQL database
-   Required Python packages:
    -   mysql-connector-python 9.0.0
    -   python-dotenv 1.0.1

These can be installed via the provided `requirements.txt` file.

## Support

For issues or questions, please open an issue in the GitHub repository.
