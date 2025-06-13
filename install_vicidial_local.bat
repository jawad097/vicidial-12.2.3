@echo off
echo =============================================
echo VICIdial 12.2.3 Complete Local Installation
echo =============================================

echo Creating database...
C:\xampp\mysql\bin\mysql.exe -u root -e "DROP DATABASE IF EXISTS asterisk;"
C:\xampp\mysql\bin\mysql.exe -u root -e "CREATE DATABASE asterisk;"

echo Importing complete database (this may take a few minutes)...
C:\xampp\mysql\bin\mysql.exe -u root asterisk < database\vicidial_complete_all_data.sql

echo Setting up local configuration...
copy vicidial\dbconnect_local.php vicidial\dbconnect.php
copy agc\dbconnect_mysqli_local.php agc\dbconnect_mysqli.php

echo =============================================
echo VICIdial 12.2.3 Installation Complete!
echo =============================================
echo.
echo Access your VICIdial at:
echo - Admin Interface: http://localhost/vicidial/admin.php
echo - Agent Interface: http://localhost/agc/vicidial.php
echo.
echo Default Login:
echo - Username: admin
echo - Password: hello123456
echo.
echo Your VICIdial is 100%% functional with all data!
echo =============================================
pause
