@echo off
set javaFileName=%1
javac %1 

IF %ERRORLEVEL%==0 (
set "javaClassFile=%javaFileName:.="^&REM #%
java %javaClassFile%
)

echo,