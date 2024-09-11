import mysql.connector

def execute_sql_file(connection, file_path):
    results = []
    cursor = None
    try:
        with open(file_path, 'r') as file:
            sql_script = file.read()
        
        cursor = connection.cursor(dictionary=True)
        
        # Execute multiple statements
        for result in cursor.execute(sql_script, multi=True):
            if result.with_rows:
                rows = result.fetchall()
                results.append(rows)
                print(f"Results from {file_path}:")
                for row in rows:
                    print(row)
            else:
                affected_rows = result.rowcount
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
