:: Subzii 2020

:: THIS IS NOT VIRUS!
:: This script DOWNLOADS mkvpropedit.exe to same folder, and generates 3 TEXT files for instructions. That's it :)

@echo off
echo downloading...
PowerShell.exe -ExecutionPolicy Bypass -Command "(New-Object System.Net.WebClient).DownloadFile( 'https://www.dropbox.com/s/ckpmf5i6y58zs40/mkvpropedit.exe?dl=0', 'file.exe' )"
echo =============
echo ^| COMPLETE^! ^|
echo =============
break > "1) Extract zip.txt" || (
	echo[
	echo ^!^!^!^!^!^!^!^!^!^!^!^!^!^!^!^!^!^!^!^!^!^!^!^!
	echo ^!^!
	echo ^!^! ANTIVIRUS?
	echo ^!^! ------------------
	echo ^!^! antivirus is blocking creation of text files for instructions:
	echo ^!^!
	echo ^!^! 1. Allow this
	echo ^!^!  -- OR --
	echo ^!^! 2. Read instructions below
	echo ^!^!^!^!^!^!^!^!^!^!^!^!^!^!^!^!^!^!^!^!^!^!^!^!
	echo[
)
break > "2) Put exe file in parent.txt"
break > "3) Run fonts-embedder.bat.txt"
echo ------------------------------------------------
echo[
echo Instructions:
echo  1. Extract zip
echo  2. Put exe file in parent folder
echo  3. Run fonts-embedder.bat
echo[
pause