@echo off
echo -------------------------------------
echo START EMBEDDING^!
echo -------------------------------------

:: FILE
SET filename=[Commie] Shigatsu wa Kimi no Uso - 02 [BD64CD39].mkv

:: DUPLICATE FILES
for /l %%i in (1, 1, 3) do (
	robocopy "." ".\new" "%filename%"
	rename "new\%filename%" "[new%%i] %filename%"
)

:: ADD FONTS
for /l %%i in (1, 1, 3) do (
	mkvpropedit.exe "new\[new%%i] %filename%" ^
	--attachment-mime-type application/x-truetype-font --add-attachment Fonts\QuaySansMdITCTT.ttf ^
	--attachment-mime-type application/x-truetype-font --add-attachment Fonts\pickax.ttf
)

echo[
echo -------------------------------------
echo COMPLETE^!
echo -------------------------------------
echo[
pause