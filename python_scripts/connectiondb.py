import os
from dotenv import load_dotenv
import mysql.connector
from execute_task import execute_task


# Get the current script's directory
current_dir = os.path.dirname(os.path.abspath(__file__))


# Construct the path to the .env file
dotenv_path = os.path.join(os.path.dirname(current_dir), '.env')


if not os.path.exists(dotenv_path):
    print(f"Expected .env path: {dotenv_path}")
    raise FileNotFoundError(f".env file not found at {dotenv_path}")
    

# Load environment variables from .env file
load_dotenv(dotenv_path)
print(".env file found and loaded successfully.")


# Get database credentials from environment variables
db_host = os.getenv('DB_HOST')
db_port = os.getenv('DB_PORT') 
db_name = os.getenv('DB_NAME')
db_user = os.getenv('DB_USER')
db_password = os.getenv('DB_PASSWORD')

# Get SSL certificate path
ssl_ca_path = os.getenv('SSL_CA_PATH')

# Validate SSL certificate path
if not ssl_ca_path or not os.path.isfile(ssl_ca_path):
    raise FileNotFoundError(f"SSL Certificate file not found at {ssl_ca_path}")




def get_mysql_connection():
    connection = None
    try:
        connection = mysql.connector.connect(
            host=db_host,
            port=db_port,  
            database=db_name,
            user=db_user,
            password=db_password,
            ssl_ca=ssl_ca_path,
            ssl_verify_cert=True,
            ssl_verify_identity=True
        )

        if connection.is_connected():
            db_info = connection.get_server_info()
            print(f"Connected to MySQL Server version {db_info}")
        
            cursor = connection.cursor()
            cursor.execute("SELECT DATABASE();")
            record = cursor.fetchone()
            print(f"You're connected to database: {record[0]}")
            cursor.close()
            return connection

    except Exception as e:
        print(f"An unexpected error occurred: {e}")
        if connection and connection.is_connected():
            connection.close()
        return None



def main():
    connection = get_mysql_connection()
    task_folders = {
                '1': 'create_tables',
                '2': 'data_migration',
                '3': 'foreign_key_relations',
                '4': 'db_validation_tests'
            }
    if connection:
        try:
            print("Connected to the database in main")
            while True:
                print("\nWhat would you like to do?")
                print("1. Create tables")
                print("2. Data migration")
                print("3. Foreign key relations")
                print("4. DB validation tests (not implemented yet)")
                print("5. Exit")
            
                choice = input("Enter your choice (1-5): ").strip()
            
                if choice == '5':
                    break
            
                if choice not in ['1', '2', '3', '4']:
                    print("Invalid choice. Please try again.")
                    continue
            
                task_folder = task_folders[choice]
            
                file_name = input("Enter specific file name (or press Enter to run all .sql files): ").strip()
            
                if choice == '3' or choice == '4':
                    print("These are not implemented yet.")
                else:
                    execute_task(connection, task_folder, file_name if file_name else None)
        finally:
            connection.close()
            print("MySQL connection is closed")
    else:
        print("Failed to establish database connection")

if __name__ == "__main__":
    main()