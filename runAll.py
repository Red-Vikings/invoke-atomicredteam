import os
#import pyautogui#for screenshots
orig_stdout = sys.stdout

#may need to define PathToAtomicsFolder

#lTech = [d for d in os.listdir(ATOMICS_DIR_RELATIVE_PATH) if d[0] == "T"]

def TestNumbersList():
	#Use -ShowDetailsBrief to have the Test Numbers
	

def loadPrerequisite(tech_number, executor):
	'''Uses CheckPrereqs to check and GetPrereq to do the prereq commands'''
	
	#Check if everything is ready with -CheckPrereqs
	
	#If not(the output includes -GetPrereqs), use -GetPrereqs
	
def cleanUp(tech_number, executor):
	'''Uses -Cleanup to clean up what remains from the attack'''
	
	#Executes -Cleanup

def cleanUpAll():
	'''Cleans up all'''
	#Use cleanUp

def execute(tech_number, executor):
	'''Executes one mode for a technique'''
	#Uses -TestNumbers and changes some arguments if needed
	
def whitelist(pathToDir):
    sp.Popen("powershell -Command Add-MpPreference -ExclusionPath " + pathToDir)
	
def main():
	
	#Whitelisting the main directory
	
	#Retrieve the name of all of techniques
	
	#for each tech_number do loadPrerequisite and execute, then do a command to show the result of the attack, and at the end clean up