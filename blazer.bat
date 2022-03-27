
@echo off
mode con cols=38 lines=18
set /a num=(%Random% %%9) +1
color %num%
title BLAZER
:select
color %num%
cls
:menu
cls 
time/t
date/t
echo.                    
echo.                BLAZER
echo.               --------------
echo.           1) IP-Pinger's    
echo.             -------------   
echo.           2) CF Resolver        
echo.             -------------      
echo.           3) TraceRoute       
echo.             -------------   
echo.           4) IP-Look Up     
echo.             -------------    
echo.           5)  IP-Saver
echo.             -------------   
echo.           6)  Dox Tool      
echo.                                                                                     
set  /p ans="Please Enter 1-6.:"

if %ans%==1 (
goto a
)
if %ans%==2 (
goto Cloudflare
)
if %ans%==3 (
goto traceroute
)
if %ans%==4 (
goto iplookup
)
if %ans%==5 (
goto ipsaver
)
if %ans%==6 (
goto doxtool
)
if %ans%==7 (
goto x
)

:a
title   Coded by: isaac duh
mode con lines=10 cols=30
color 7
cls 
echo. 
echo.       IP-Pinger Menu
echo.      ----------------
echo.     1) Small IP-Pinger
echo.      ----------------
echo.     2) Nazi IP-Pinger 
echo.
set  /p ans="Please Enter 1 or 2.:"
if %ans%==1 (
goto pinger1
)
if %ans%==2 (
goto pinger2
)
:pinger1
color 4
title   Coded by: isaac duh
mode con lines=16 cols=50
cls
set /a replies=0
set /a timeouts=0
cls
echo.
echo         Type an IP of skid or URL to ping
echo.
set /p ip=Host: 
mode con lines=8 cols=30
:ping
ping %ip% -n 1 | find "Reply" >nul
if %errorlevel% EQU 1 (
set /a timeouts=%timeouts% + 1
set status=Host is offline
) else (
set /a replies=%replies% + 1
set status=Host is online
)
cls
echo Pinging %ip%
echo.
echo  %status%^^!
echo.
echo  Successful Replies: %replies%
echo.
echo  Requests Timed Out: %timeouts%
ping 127.0.0.1 -n 2 -w 1000 >nul
goto ping

:pinger2
color 4
mode con lines=20 cols=42
cls
echo.
echo                   _
echo                  / /\
echo                 / / /
echo                / / /   _
echo               /_/ /   / /\
echo               \ \ \  / /  \
echo                \ \ \/ / /\ \
echo             _   \ \ \/ /\ \ \
echo           /_/\   \_\  /  \ \ \
echo           \ \ \  / /  \   \_\/  
echo            \ \ \/ / /\ \ 
echo             \ \ \/ /\ \ \
echo              \ \  /  \ \ \
echo               \_\/   / / /
echo                     / / /
echo                    /_/ /
echo                    \_\/ 
echo.
set /P IP=Enter A IP:
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (set "DEL=%%a")
:top
PING -n 1 %IP% | FIND "TTL=" >nul
title ~Port9306~~~Pinging:%IP%~~~By:Port9306~
IF ERRORLEVEL 1 (
SET OUT=C
title ~CautiousChannel on Youtube~~I run every skid~~By:CautiousChannel on Youtube
<nul set /p="("
call :Port9306 C0 "Host" && <nul set /p="):("
call :Port9306 C0 "%IP%"  && <nul set /p=")~("
call :Port9306 C0 "OFFLINE"  && <nul set /p=")"
echo.
) ELSE (
SET OUT=A
title ~CautiousChannel on Youtube~~I run every skid~Pinging:%IP%~~ll Scxred ll~
<nul set /p="("
call :Port9306 0D "Host" && <nul set /p="):("
call :Port9306 0A "%IP%"  && <nul set /p=")~("
call :Port9306 AC "ONLINE"  && <nul set /p=")"
echo. )
goto :end
:Port9306
<nul set /p "=%DEL%" > "%~2"
findstr /v /a:%1 /R "+" "%~2" nul
del "%~2" > nul
goto :eof
:end
ping -t 1 -l 10 127.0.0.1 >nul
GoTo top
echo.
pause
:Cloudflare
mode con lines=20 cols=50
cls
color 2
echo.
echo    Type an IP or Domain to NSLookup
echo.
set /p ip=Host: 
cls
echo.
echo Name Server Look up using Cloudflare DNS. . .
echo.
nslookup %ip% 1.1.1.1
echo.
pause
goto menu
:traceroute
mode con lines=20 cols=67
cls
color 3
echo.
echo    Type an IP or URL to trace route
echo.
set /p ip=Host: 
tracert %ip%
echo.
pause
goto menu
:iplookup
mode con lines=16 cols=45
setlocal ENABLEDELAYEDEXPANSION
set webclient=webclient

del "%temp%\response.txt" /f /q /s >nul
:iplookup
tittle Coded by: CautiousChannel on Youtube
color 4
cls
echo.
echo        Type an IP to lookup
echo.
set ip=127.0.0.1
set /p ip=IP: 
echo sUrl = "http://ipinfo.io/%ip%/json" > %temp%\%webclient%.vbs
:localip
cls
echo set oHTTP = CreateObject("MSXML2.ServerXMLHTTP.6.0") >> %temp%\%webclient%.vbs
echo oHTTP.open "GET", sUrl,false >> %temp%\%webclient%.vbs
echo oHTTP.setRequestHeader "Content-Type", "application/x-www-form-urlencoded" >> %temp%\%webclient%.vbs
echo oHTTP.setRequestHeader "Content-Length", Len(sRequest) >> %temp%\%webclient%.vbs
echo oHTTP.send sRequest >> %temp%\%webclient%.vbs
echo HTTPGET = oHTTP.responseText >> %temp%\%webclient%.vbs
echo strDirectory = "%temp%\response.txt" >> %temp%\%webclient%.vbs
echo set objFSO = CreateObject("Scripting.FileSystemObject") >> %temp%\%webclient%.vbs
echo set objFile = objFSO.CreateTextFile(strDirectory) >> %temp%\%webclient%.vbs
echo objFile.Write(HTTPGET) >> %temp%\%webclient%.vbs
echo objFile.Close >> %temp%\%webclient%.vbs
rem echo Msgbox HTTPGET,vbSystemModal+vbOKOnly+vbInformation, "IP Info" >> %temp%\%webclient%.vbs
echo Wscript.Quit >> %temp%\%webclient%.vbs
start %temp%\%webclient%.vbs
set /a requests=0
echo.
rem echo Waiting for API response. . .
echo  Looking up IP Address. . .
:checkresponseexists
set /a requests=%requests% + 1
if %requests% gtr 7 goto failed
IF EXIST "%temp%\response.txt" (
goto response_exist
) ELSE (
ping 127.0.0.1 -n 2 -w 1000 >nul
goto checkresponseexists
)
:failed
taskkill /f /im wscript.exe >nul
del "%temp%\%webclient%.vbs" /f /q /s >nul
echo.
echo Did not receive a response from the API.
echo.
pause
goto menu
:response_exist
mode con lines=16 cols=75
cls
echo.
for /f "delims=  " %%i in ('findstr /i "ip hostname city region country loc org postal" %temp%\response.txt') do (
 set data=%%i
 set data=!data:,=!
 set data=!data:""=Not Listed!
 set data=!data:"=!
 set data=!data:ip:=IP:  !
 set data=!data:hostname:=Hostname: !
 set data=!data:city:=City:  !
 set data=!data:region:=State: !
 set data=!data:country:=Country: !
 set data=!data:loc:=Location: !
 set data=!data:org:=ISP:  !
 set data=!data:postal:=Postal: !
 echo !data!
)
echo.
del "%temp%\%webclient%.vbs" /f /q /s >nul
del "%temp%\response.txt" /f /q /s >nul
pause
if '%ip%'=='' goto menu
goto menu 
cls
exit
:ipsaver
color 5
mode con lines=10 cols=65
title   Coded by: ll Scxred ll
cls
set /p NAME5=Enter The Username Of The IP That You Are Saving .:
set /p IP5=Enter The ip That You Are Saving.:
title Saving: %IP% / %NAME%
echo %IP5% / %NAME5% >>IPS.txt 
echo IP Saved Successfuly...
color E
echo PRESS ENTER TO RETURN... 
pause
cls

:doxtool
mode con lines=45 cols=38
tittle Coded by: ll Scxred ll
color 6
cls
echo ----REASON----
set /p q=Doxed By: 
set /p w=Reason For Dox: 
echo ----PERSONAL INFO----
set /p e=First Name:
set /p e101=Last Name: 
set /p r=Age Of %e%: 
set /p t=Male Or Female: 
set /p y=%e%'s Phone Number: 
set /p u=%e%'s Skin Colour: 
set /p i=%e%'s Date Of Birth: 
set /p o=What Language/s Does %e% Speak: 
set /p p=Whats %e% IP(s): 
set /p a=Whats %e% ISP: 
set /p s=Assignment: 
set /p d=What State Does %e% Live In: 
set /p f=What City Does %e% Live In: 
set /p g=What Is %e% Postal Code: 
set /p h=What Is %e% Address/s:
echo ----SOCIAL MEDIA----
set /p j=%e%'s Facebook:
set /p k=%e%'s Youtube: 
set /p l=%e%'s Twitter: 
set /p z=%e%'s Websites: 
set /p x=%e%'s Email: 
set /p c=%e%'s Steam: 
set /p v=%e%'s Twitch.tv: 
set /p b=%e%'s Google+: 
set /p n=%e%'s Skype: 
echo ----Family----
echo ----Dad----
set /p m=%e%'s Dad's Name: 
set /p q1=%m%'s Number: 
set /p q2=%m%'s Date Of Birth(DOB)✞:
set /p q3=%m%'s Height: 
set /p q4=%m%'s Weight: 
set /p q5=%m%'s Married since: 
set /p q6=%m%'s Address History: 
set /p q7=%m%'s Usernames:
set /p q8=%m%'s Facebook:
set /p q9=%m%'s Passwords:
set /p q0=%m%'s Emails:
echo ----Mom----
set /p m1=%e%'s mom's Name: 
set /p n1=%m%'s Number: 
set /p n2=%m%'s Date Of Birth(DOB)✞:
set /p n3=%m%'s Height: 
set /p n4=%m%'s Weight: 
set /p n5=%m%'s Married since: 
set /p n6=%m%'s Address History: 
set /p n7=%m%'s Usernames:
set /p n8=%m%'s Facebook:
set /p n9=%m%'s Passwords:
set /p n0=%m%'s Emails:
echo --TOOL/TEMPLATE MADE BY: YT:CautiousChannel--
pause
goto z