@echo off
cd /d "%~dp0"
echo Compiling EmployeeApp...
javac -cp ".;mysql-connector-j-9.6.0.jar" EmployeeApp.java
if %errorlevel% neq 0 (
    echo Compilation FAILED!
    pause
    exit /b 1
)

echo Running EmployeeApp...
java -cp ".;mysql-connector-j-9.6.0.jar" EmployeeApp
pause

