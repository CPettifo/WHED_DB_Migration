import mysql.connector
import mysql.connector 

def execute_sql_file(connection, file_path):
    results = []
    try:
        with open(file_path, 'r') as file:
            sql_script = file.read()
        
        cursor = connection.cursor(dictionary=True)
        
        # For multiple statements
        statements = sql_script.split(';')
        
        for statement in statements:
            if statement.strip():
                cursor.execute(statement)
                if cursor.with_rows:
                    result = cursor.fetchall()
                    results.append(result)
                    print(f"Results from {file_path}:")
                    for row in result:
                        print(row)
                else:
                    affected_rows = cursor.rowcount
                    results.append(f"Affected rows: {affected_rows}")
                    print(f"Affected rows: {affected_rows}")
        
        connection.commit()
        print(f"Successfully executed all statements in: {file_path}")
    except mysql.connector.Error as e:
        print(f"MySQL Error executing {file_path}: {e}")
    except Exception as e:
        print(f"An unexpected error occurred while executing {file_path}: {e}")
    finally:
        if cursor:
            cursor.close()
    
    return results
