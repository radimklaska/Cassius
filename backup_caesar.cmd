:: time and date stamp YYYYMMDD, HHMMSS and YYYY-MM-DD_HH-MM-SS
@echo off
for /f "delims=" %%a in ('wmic OS Get localdatetime  ^| find "."') do set dt=%%a
set datestamp=%dt:~0,8%
set timestamp=%dt:~8,6%
set YYYY=%dt:~0,4%
set MM=%dt:~4,2%
set DD=%dt:~6,2%
set HH=%dt:~8,2%
set Min=%dt:~10,2%
set Sec=%dt:~12,2%

set stamp=%YYYY%-%MM%-%DD%_%HH%-%Min%-%Sec%

echo ===
echo ===
echo ===
echo !!! Vytvarim snapshot v case: "%stamp%"
echo ===
echo ===
echo ===
md "C:\Documents and Settings\Uzivatel\Dokumenty\Dropbox\Zalohy_CEZAR\snapshot_%stamp%\CEZAR\"
md "C:\Documents and Settings\Uzivatel\Dokumenty\Dropbox\Zalohy_CEZAR\snapshot_%stamp%\CEZAR.OVR\"
md "C:\Documents and Settings\Uzivatel\Dokumenty\Dropbox\Zalohy_CEZAR\snapshot_%stamp%\CEZAR.PRN\"
echo !!! Zaloha bude ulozena zde: "C:\Documents and Settings\Uzivatel\Dokumenty\Dropbox\Zalohy_CEZAR\snapshot_%stamp%"
echo ===
echo ===
echo ===
echo !!! KOPIRUJI! NEVYPINAT!
xcopy "C:\CEZAR\*" "C:\Documents and Settings\Uzivatel\Dokumenty\Dropbox\Zalohy_CEZAR\snapshot_%stamp%\CEZAR\" /s /i /Y
xcopy "C:\CEZAR.OVR\*" "C:\Documents and Settings\Uzivatel\Dokumenty\Dropbox\Zalohy_CEZAR\snapshot_%stamp%\CEZAR.OVR\" /s /i /Y
xcopy "C:\CEZAR.PRN\*" "C:\Documents and Settings\Uzivatel\Dokumenty\Dropbox\Zalohy_CEZAR\snapshot_%stamp%\CEZAR.PRN\" /s /i /Y
echo !!! KOPIROVANI DOKONCENO.
echo ===
echo ===
echo ===
echo !!! Prosim vyckejce na DOKONCENI synchronizace Dropboxu!
echo !!! (Toto okno lze jiz zavrit libovolnou klavesou.)
echo ===
echo ===
echo ===
pause
