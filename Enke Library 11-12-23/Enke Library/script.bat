@ECHO off
Rem First, run the sql file that creates the database
"C:\Program Files\MySQL\MySQL Server 8.1\bin\mysql.exe" --user=root < 0.EnkeLibrary_CreateEnkeLibrary.sql

Rem For each folder/directory......
FOR /D %%D IN (*) DO (
    Rem Change directory to the param %D
    CD "./%%D"
    Rem For each sql file........
    FOR %%A IN ("*.sql") DO (
    Rem Run the sql file in enkelibrary DB
        "C:\Program Files\MySQL\MySQL Server 8.1\bin\mysql.exe" --user=root enkelibrary < %%A
    )
    Rem Go up one directory after we finish with this directory
    CD "../"
)
rem Keep the window open to read output if necessary
pause