# Execute bash commands
import os

whoami_output = os.popen("whoami").read()
ip_output = os.popen("ip a").read()
lshw_output = os.popen("lshw -short").read()

print("Current user:", whoami_output)
print("IP information:\n", ip_output)
print("Hardware information:\n", lshw_output)