# OCI Console Connection script for Windows VNC

A script to take the "VNC connection for Windows" string on creating a local connection, which modifies the string and runs it in one command.

## Requirements:

* Create a folder ```C:\Users\<username>\oci```
* Add your private key as ```console.ppk``` into that folder
* * Best practices on creating an operating system independent keypair (both normal private key and .ppk) found [here](https://github.com/Brandon-DeYoung)
* [Download plink.exe](https://www.chiark.greenend.org.uk/~sgtatham/putty/latest.html) to ```C:\Users\<username>```


## To run

* Clone ```console.ps1``` to ```C:\Users\<username>```
* Run PowerShell as administrator
* Run ```cd ~``` within PowerShell
* Run ```.\console.ps1```
* Paste the VNC connection for Windows string into the pop-up box and press OK
* Press enter through the prompts
* After you see ```Access granted. Press Return to begin session.``` within PowerShell, launch your preferred VCN client and connect to ```localhost:5900```
* * My preferred on Windows is [TigerVNC](https://tigervnc.org/)
