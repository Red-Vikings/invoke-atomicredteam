import os, sys
#import pyautogui#for screenshots
#print(sys.argv)

os.system("powershell .\ExecuteAttacks.ps1 " + " ".join(sys.argv))

input("Press any key to clean up")

os.system("powershell .\CleanUp.ps1 " + " ".join(sys.argv))