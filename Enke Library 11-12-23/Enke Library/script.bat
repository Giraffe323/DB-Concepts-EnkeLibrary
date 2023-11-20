@ECHO OFF
for /D %%a in ("C:\Program Files\MySQL\MySQL Server 8.*") do set "mySQLVerNum=%%a"

echo Enter MySQL Password or leave blank if no password:
set /p "pass=>"

::First, run the sql file that creates the database
 "%mySQLVerNum%\bin\mysql.exe" --user=root --password=%/p% < 0.EnkeLibrary_CreateEnkeLibrary.sql



::For each folder/directory......
FOR /D %%D IN (*) DO (
    ::Change directory to the param %D
    CD "./%%D"
    ::For each sql file........
    FOR %%A IN ("*.sql") DO (
    ::Run the sql file in enkelibrary DB
        echo Running file: %%A
        "%mySQLVerNum%\bin\mysql.exe" --user=root --password=%/p% enkelibrary < %%A > nul
    )
    ::Go up one directory after we finish with this directory
    CD "../"
)
:: Keep the window open to read output if necessary

pause
