import os
from execute_sql_file import execute_sql_file

def execute_task(connection, task_folder, file_index):
    base_dir = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
    task_dir = os.path.join(base_dir, task_folder)
    if not os.path.exists(task_dir):
        print("Path to the task folder does not exist")
        return
    
    sql_files = [f for f in os.listdir(task_dir) if f.endswith('.sql')]
    if not sql_files:
        print(f"The folder '{task_folder}' is empty or contains no SQL files.")
        return
    
    if 0 <= file_index < len(sql_files):
        file_path = os.path.join(task_dir, sql_files[file_index])
        execute_sql_file(connection, file_path)
    else:
        print("Invalid file number.")