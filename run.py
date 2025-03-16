import subprocess
import random

def run_robot_test():
    Tag =  '@ui_logo_idn'
    
    # Path ke folder dimana file .robot yang ingin Anda jalankan
    robot_file_path = "testcases"
    # Untuk membuat angka random buat report supaya tidak tercampur
    random_number = random.randint(1000, 9999)




    #############################################################################################################################################################
    # Command Prompt yang akan dijalankan
    process = subprocess.Popen(['robot', '-d', 'reports/'+Tag+'_report_'+str(random_number), '-i', Tag, robot_file_path], stdout=subprocess.PIPE, stderr=subprocess.PIPE)

    # Tangkap output dan error jika ada dan diperlukan (optional)
    stdout, stderr = process.communicate()
    # Tampilkan output dan error
    print("Output:", stdout.decode())
    print("Error:", stderr.decode())

if __name__ == "__main__":
    run_robot_test()
