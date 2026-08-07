# MCPIedit

![Image](image.png)

A Simple Tool For Modifying MCPI Level Files

## How To Install/Update
```sh
# Clean up before you begin
rm -Rf envmcpiedit # Remove 0ld isolated virtual environment
rm -Rf ~/.mcpiedit # Remove 0ld MCPIedit Folder
```

```sh
# Install MCPIedit prerequisites
sudo apt-get install build-essential python3-venv python3-tk

# Install MCPIedit modules in isolated virtual environment
python3 -m venv envmcpiedit
source envmcpiedit/bin/activate
pip3 install mutf8 pynbt tk
deactivate
```

```sh
# GIT MCPIedit
git clone https://github.com/RapidEdwin08/MCPIedit.git ~/.mcpiedit
```

## How To Run
```sh
# Run mcpiedit in isolated virtual environment
source envmcpiedit/bin/activate
~/.mcpiedit/mcpiedit
deactivate
```
## Python 3.1x+ mutf8/pynbt/tkinter Errors
Traceback (most recent call last):
  File "/home/pi/.mcpiedit/./main.py", line 8, in <module>
    from pynbt import NBTFile, TAG_String, TAG_Long, TAG_Int, TAG_Short, TAG_List, TAG_Compound, TAG_Byte
  File "/usr/local/lib/python3.11/dist-packages/PyNBT-3.1.0-py3.11.egg/pynbt.py", line 23, in <module>
ModuleNotFoundError: No module named 'mutf8'

Traceback (most recent call last):
  File "/home/pi/.mcpiedit/./main.py", line 8, in <module>
    from pynbt import NBTFile, TAG_String, TAG_Long, TAG_Int, TAG_Short, TAG_List, TAG_Compound, TAG_Byte
ModuleNotFoundError: No module named 'pynbt'

Traceback (most recent call last):
  File "/home/pi/.mcpiedit/./main.py", line 1, in <module>
    import tkinter as tk
ModuleNotFoundError: No module named 'tkinter'

```sh
# sudo apt-get install python3-mutf8 # Unable to locate package python3-mutf8
# sudo dpkg -i ~/python3-mutf8_1.0.6-2+b2_arm64.deb # Error: Dependency is not satisfiable: python3 (>=3.13~)
```
## For Python 3.1x+ use isolated virtual environment to Install Modules + Run MCPIedit
```sh
python3 -m venv envmcpiedit # Create venv (eg. envmcpiedit)
source envmcpiedit/bin/activate # Activate venv
pip3 install mutf8 pynbt tk # Install required modules in Active venv
deactivate # Deactivate venv

# Run mcpiedit
source envmcpiedit/bin/activate # Activate venv (envmcpiedit)
~/.mcpiedit/mcpiedit # Run mcpiedit
deactivate # Deactivate venv
```
