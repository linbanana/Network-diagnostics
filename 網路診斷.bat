@echo off
title=巴那那網路診斷程式
echo 　　　－－－－－－－－－－－－－－
echo      ｜　　巴那那網路診斷程式　　｜
echo 　　　－－－－－－－－－－－－－－
echo 歡迎使用巴那那網路診斷程式！
echo %date% %time%
rem mshta vbscript:msgbox("%UserName%您好，請輸入網路測試方式",64,"提示")(window.close)
echo.
echo.
echo.



set logname="網路診斷"
set GoogleDNS="8.8.8.8"


:address
echo ------------------------------------------------------------------------------
echo.
set /p address=是否要輸入診斷的目標位址：1.yes 2.no(使用預設位址)　　
echo.
if "%address%"=="1" Goto ipinput
if "%address%"=="2" Goto log



rem log儲存位置設定

:log
echo ------------------------------------------------------------------------------
echo.
set /p log=是否要儲存log檔?(保留掉封包證據~以方便給網路業者查修)1.yes 2.no　
echo.　
if "%log%"=="1" (Goto logpath) else (if "%address%"=="1" (Goto how2) else (Goto how))
pause



:logpath
echo ------------------------------------------------------------------------------
echo.
set /p logpath=是否要設定儲存的路徑位置?1.yes 2.no(使用預設位址)　　
echo.
if "%logpath%"=="1" (set /p setpath=請輸入您要儲存的路徑位置：) else (set setpath="C:\Users\%UserName%\Desktop")
if "%address%"=="1" (Goto how2) else (Goto how)
pause



rem 如何診斷網路?

:how
echo ------------------------------------------------------------------------------
echo.
set /p how=請輸入您要使用的網路診斷方式：1.ping　2.tracert　　
echo.
if "%how%"=="1" (Goto ping) else (Goto tracert)
pause



rem 自訂診斷網路

:ipinput
echo ------------------------------------------------------------------------------
echo.
set /p where=請輸入您要測試的ip位址：%where%(例如:www.google.com、8.8.4.4)　
if %where%==%where% Goto log



:how2
echo ------------------------------------------------------------------------------
echo.
set /p how=請輸入您要使用的網路測試方式：1.ping　2.tracert　　
if "%how%"=="1" (Goto ping2) else (Goto tracert2)
pause



:ping
cls
echo 　　　－－－－－－－－－－－－－－
echo      ｜　　巴那那網路診斷程式　　｜
echo 　　　－－－－－－－－－－－－－－
echo 歡迎使用巴那那網路測試程式！
echo %date% %time%
echo.
echo 您選擇的方式是ping，測試位置:%GoogleDNS%(Google DNS)。
echo 系統正在運行中...暫停請按"<Control-C>"
type nul>%setpath%\%logname%.log
echo %date% %time%>>%setpath%\%logname%.log
echo 　　　－－－－－－－－－－－－－－>>%setpath%\%logname%.log
echo      ｜　　巴那那網路診斷程式　　｜>>%setpath%\%logname%.log
echo 　　　－－－－－－－－－－－－－－>>%setpath%\%logname%.log
if "%log%"=="1" (ping %GoogleDNS% -t >>%setpath%\%logname%.log) else (ping %GoogleDNS% -t)
pause
exit



:tracert
cls
echo 　　　－－－－－－－－－－－－－－
echo      ｜　　巴那那網路診斷程式　　｜
echo 　　　－－－－－－－－－－－－－－
echo 歡迎使用巴那那網路測試程式！
echo %date% %time%
echo.
echo 您選擇的方式是tracert，測試位置:%GoogleDNS%(Google DNS)。
echo 系統正在運行中請稍後...
type nul>%setpath%\%logname%.log
echo %date% %time%>>%setpath%\%logname%.log
echo 　　　－－－－－－－－－－－－－－>>%setpath%\%logname%.log
echo      ｜　　巴那那網路診斷程式　　｜>>%setpath%\%logname%.log
echo 　　　－－－－－－－－－－－－－－>>%setpath%\%logname%.log
if "%log%"=="1" (tracert %GoogleDNS% >>%setpath%\%logname%.log) else (tracert %GoogleDNS%)
pause
exit



:ping2
cls
echo 　　　－－－－－－－－－－－－－－
echo      ｜　　巴那那網路診斷程式　　｜
echo 　　　－－－－－－－－－－－－－－
echo 歡迎使用巴那那網路測試程式！
echo %date% %time%
echo.
echo 您選擇的方式是ping，測試位置:%where%。
echo 系統正在運行中...暫停請按"<Control-C>"
type nul>%setpath%\%logname%.log
echo %date% %time%>>%setpath%\%logname%.log
echo 　　　－－－－－－－－－－－－－－>>%setpath%\%logname%.log
echo      ｜　　巴那那網路診斷程式　　｜>>%setpath%\%logname%.log
echo 　　　－－－－－－－－－－－－－－>>%setpath%\%logname%.log
if "%log%"=="1" (ping %where% -t >>%setpath%\%logname%.log) else (ping %where% -t)
pause
exit


:tracert2
cls
echo 　　　－－－－－－－－－－－－－－
echo      ｜　　巴那那網路診斷程式　　｜
echo 　　　－－－－－－－－－－－－－－
echo 歡迎使用巴那那網路測試程式！
echo %date% %time%
echo.
echo 您選擇的方式是tracert，測試位置:%where%。
echo 系統正在運行中請稍後...
type nul>%setpath%\%logname%.log
echo %date% %time%>>%setpath%\%logname%.log
echo 　　　－－－－－－－－－－－－－－>>%setpath%\%logname%.log
echo      ｜　　巴那那網路診斷程式　　｜>>%setpath%\%logname%.log
echo 　　　－－－－－－－－－－－－－－>>%setpath%\%logname%.log
if "%log%"=="1" (tracert %where% >>%setpath%\%logname%.log) else (tracert %where%)
pause
exit