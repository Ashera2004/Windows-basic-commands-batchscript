# AIM:
To execute Windows basic commands and batch scripting

# DESIGN STEPS:

### Step 1:

Navigate to any Windows environment installed on the system or installed inside a virtual environment like virtual box/vmware 

### Step 2:

Write the Windows commands / batch file . Save each script in a file with a .bat extension. Ensure you have the necessary permissions to perform the operations. Adapt paths as needed based on your system configuration.
### Step 3:

Execute the necessary commands/batch file for the desired output. 


# WINDOWS COMMANDS:
## Exercise 1: Basic Directory and File Operations
Create a directory named "my-folder"

<img width="952" height="248" alt="os_ex8_1" src="https://github.com/user-attachments/assets/35dd59e3-7e95-49db-a90b-75fa95e42eca" />

## COMMAND AND OUTPUT

Remove the directory "my-folder"

<img width="733" height="225" alt="os_ex8_2" src="https://github.com/user-attachments/assets/0ff25639-e8eb-45d6-b117-e1fd363b7f60" />

## COMMAND AND OUTPUT

Create the file Rose.txt

<img width="801" height="342" alt="os_ex8_3" src="https://github.com/user-attachments/assets/86ad823a-8862-4212-af2c-ce074b55c7b5" />


## COMMAND AND OUTPUT


Create the file hello.txt using echo and redirection

<img width="780" height="132" alt="os_ex8_4" src="https://github.com/user-attachments/assets/a01dfd5d-9bac-4533-97cf-c01eafe12b3b" />


## COMMAND AND OUTPUT

Copy the file hello.txt into the file hello1.txt

<img width="737" height="360" alt="os_ex8_5" src="https://github.com/user-attachments/assets/adda59b6-8f35-4d9b-abd5-5a8720b853db" />


## COMMAND AND OUTPUT

Remove the file hello1.txt

<img width="632" height="232" alt="os_ex8_6" src="https://github.com/user-attachments/assets/a68d30b7-9e26-401c-95af-f0d393b4271b" />


## COMMAND AND OUTPUT

List out the file hello1.txt in the current directory

<img width="572" height="257" alt="os_ex8_7" src="https://github.com/user-attachments/assets/82676ee1-2730-423e-86f1-5b823092e2e5" />


## COMMAND AND OUTPUT

List out all the associated file extensions 

<img width="826" height="607" alt="os_ex8_8" src="https://github.com/user-attachments/assets/b733cd2c-b26b-4904-b712-132e0cbf5786" />

----------------------------------------------------
## COMMAND AND OUTPUT


Compare the file hello.txt and rose.txt

<img width="667" height="258" alt="os_ex8_9" src="https://github.com/user-attachments/assets/5c02e370-bcde-45a3-8d23-6c0f37a81f93" />


## Exercise 2: Advanced Batch Scripting
Create a batch file named on the desktop. The batch file need to have a variable assigned with a desired name for ex. name="John" and display as "Hello, John".

```bat
@echo off
set name=Siddarth A S
echo Hello, %name%!
pause

```



## OUTPUT

<img width="443" height="161" alt="os_ex8_10" src="https://github.com/user-attachments/assets/7ac6b36d-1b65-484c-847a-dcde1d08d8b4" />
-----------------------------------------------------------

Create a batch file  on the desktop that checks whether a user-input number is odd or not. The script should:
Prompt the user to enter a number.
Calculate the remainder when the number is divided by 2.
Display whether the number is odd or not.
Ask the user if they want to check another number.
Repeat the process if the user enters Y, and exit with a thank-you message if the user enters N.
Handle invalid inputs for the continuation prompt (Y/N) gracefully.

```bat
@echo off
:Start
set /p num=Enter a number: 
set /a rem=%num% %% 2

if %rem%==0 (
    echo The number %num% is EVEN.
) else (
    echo The number %num% is ODD.
)

:AskAgain
set /p choice=Do you want to check another number? (Y/N): 
if /i "%choice%"=="Y" goto Start
if /i "%choice%"=="N" goto End
echo Invalid input! Please enter Y or N.
goto AskAgain

:End
echo Thank you for using the Odd-Even Checker, Siddarth A S!
pause


```

## OUTPUT


<img width="961" height="325" alt="os_ex8_11" src="https://github.com/user-attachments/assets/2dc5748a-b84c-4132-80aa-0ab47ed64aa7" />

-----------------------------------
Write a batch file that uses a FOR loop to iterate over a sequence of numbers (1 to 5) and displays each number with the label Number:. The output should pause at the end.

```bat
@echo off
for /l %%i in (1,1,5) do (
    echo Number: %%i
)
pause

```


## OUTPUT

<img width="692" height="281" alt="os_ex8_12" src="https://github.com/user-attachments/assets/09bcb69c-df9a-44d6-9b32-09aa555d8309" />


--------------

Write a batch script to check whether a file named sample.txt exists in the current directory. If the file exists, display the message sample.txt exists. Otherwise, display sample.txt does not exist. Pause the script at the end to view the result.

Instructions:
Use the IF EXIST conditional statement.
Make sure the script works for files located in the same directory as the batch file.
Use pause to keep the command window open after displaying the message.
Expected Output (if the file exists):
```bat
@echo off
if exist sample.txt (
    echo sample.txt exists.
) else (
    echo sample.txt does not exist.
)
pause

```
## OUTPUT

<img width="516" height="218" alt="os_ex8_13" src="https://github.com/user-attachments/assets/22f0c17b-b305-4a14-9915-cde9c5a07381" />

---------------------------------------------

Write a batch script that displays a simple menu with three options:
Say Hello – Displays the message Hello, World!
Create a File – Creates a file named newfile.txt with the content This is a new file
Exit – Exits the script with a goodbye message
The script should repeatedly display the menu until the user chooses to exit. Use goto statements to handle menu navigation.

```bat
@echo off
:menu
cls
echo ==============================
echo          MAIN MENU
echo ==============================
echo 1. Say Hello
echo 2. Create a File
echo 3. Exit
echo ==============================
set /p choice=Enter your choice (1-3): 

if "%choice%"=="1" goto sayhello
if "%choice%"=="2" goto createfile
if "%choice%"=="3" goto exit
echo Invalid choice! Please try again.
pause
goto menu

:sayhello
echo Hello, World!
pause
goto menu

:createfile
echo This is a new file > newfile.txt
echo newfile.txt has been created successfully!
pause
goto menu

:exit
echo Goodbye! Exiting the program...
pause
exit


```
## OUTPUT

<img width="518" height="80" alt="os_ex8_14_1" src="https://github.com/user-attachments/assets/d8f445ef-3fb2-4da5-9b1b-f2b59de6e8c2" />

<img width="498" height="350" alt="os_ex8_14_2" src="https://github.com/user-attachments/assets/87179054-53e6-4332-92a2-200782c61a6e" />

<img width="611" height="362" alt="os_ex8_14_3" src="https://github.com/user-attachments/assets/0429ef76-57c4-4f35-ac91-f1a57c23bf61" />

<img width="502" height="355" alt="os_ex8_14_4" src="https://github.com/user-attachments/assets/a9ca7ccf-a3f5-4d49-bb94-52c8fa829be5" />


# RESULT:
The commands/batch files are executed successfully.

