@echo off
:run
title=�ڨ��������E�_�{��
echo �@�@�@�ССССССССССССС�
echo      �U�@�@�ڨ��������E�_�{���@�@�U
echo �@�@�@�ССССССССССССС�
echo �w��ϥΤڨ��������E�_�{���I
echo %date% %time%
echo.
echo.
echo.



set logname="�����E�_"
set GoogleDNS="8.8.8.8"


:address
echo ------------------------------------------------------------------------------
echo.
set /p address=�O�_�n��J�E�_���ؼЦ�}�G1.yes 2.no(�ϥιw�]��}�GGoogle Public DNS IPv4�G8.8.8.8)�@�@
echo.
if "%address%"=="1" (Goto ipinput) else (if "%address%"=="2" (Goto log) else (echo ��J���~!�п�J"1"or"2"... &Goto address))
pause


rem log�x�s��m�]�w

:log
echo ------------------------------------------------------------------------------
echo.
set /p log=�O�_�n�x�slog��?(�O�d���ʥ]�Ҿ�~�H��K�������~�̬d��)1.yes 2.no�@
echo.�@
if "%log%"=="1" (Goto logpath) else (if "%log%"=="2" (if "%address%"=="1" (Goto how2) else (Goto how)) else (echo ��J���~!�п�J"1"or"2"... &Goto log))
pause



:logpath
echo ------------------------------------------------------------------------------
echo.
set /p logpath=�O�_�n�]�w�x�s�����|��m?1.yes 2.no(�ϥιw�]��m�G�ୱ)�@�@
echo.
if "%logpath%"=="1" (set /p setpath=�п�J�z�n�x�s�����|��m�G) else (if "%logpath%"=="2" (set setpath="D:\Users\%UserName%\Desktop") else (echo ��J���~!�п�J"1"or"2"... &Goto logpath))
if "%address%"=="1" (Goto how2) else (Goto how)
pause



rem �p��E�_����?

:how
echo ------------------------------------------------------------------------------
echo.
set /p how=�п�J�z�n�ϥΪ������E�_�覡�G1.ping�@2.tracert�@�@
echo.
if "%how%"=="1" (Goto ping) else (if "%how%"=="2" (Goto tracert) else (echo ��J���~!�п�J"1"or"2"... &Goto how))
pause



rem �ۭq�E�_����

:ipinput
echo ------------------------------------------------------------------------------
echo.
set /p where=�п�J�z�n���ժ�ip��}�G%where%(�Ҧp:www.google.com�B8.8.4.4)�@�@
if "%where%"=="%where%" Goto log



:how2
echo ------------------------------------------------------------------------------
echo.
set /p how=�п�J�z�n�ϥΪ��������դ覡�G1.ping�@2.tracert�@�@
if "%how%"=="1" (Goto ping2) else (if "%how%"=="2" (Goto tracert2) else (echo ��J���~!�п�J"1"or"2"... &Goto how2))
pause




:ping
cls
echo      �ССССССССССССС�
echo     �U�@�@�ڨ��������E�_�{���@�@�U
echo      �ССССССССССССС�
echo �w��ϥΤڨ����������յ{���I
echo %date% %time%
echo.
echo �z��ܪ��覡�Oping�A���զ�m:%GoogleDNS%(Google DNS)�C
echo.
echo �t�Υ��b�B�椤...�Ȱ��Ы�"<Control-C>"
type nul>%setpath%\%logname%.log
echo %date%�@�@%time%>>%setpath%\%logname%.log
echo �@�@�@�ССССССССССССС�>>%setpath%\%logname%.log
echo      �@�U�@�@�ڨ��������E�_�{���@�@ �U>>%setpath%\%logname%.log
echo �@�@�@�ССССССССССССС�>>%setpath%\%logname%.log
if "%log%"=="1" (ping %GoogleDNS% -t >>%setpath%\%logname%.log&%setpath%\%logname%.log) else (ping %GoogleDNS% -t)
Goto End



:tracert
cls
echo �@�@�@�ССССССССССССС�
echo      �U�@�@�ڨ��������E�_�{���@�@�U
echo �@�@�@�ССССССССССССС�
echo �w��ϥΤڨ����������յ{���I
echo %date% %time%
echo.
echo �z��ܪ��覡�Otracert�A���զ�m:%GoogleDNS%(Google DNS)�C
echo.
echo �t�Υ��b�B�椤�еy��...
type nul>%setpath%\%logname%.log
echo %date% %time%>>%setpath%\%logname%.log
echo �@�@�@�ССССССССССССС�>>%setpath%\%logname%.log
echo      �@�U�@�@�ڨ��������E�_�{���@�@ �U>>%setpath%\%logname%.log
echo �@�@�@�ССССССССССССС�>>%setpath%\%logname%.log
if "%log%"=="1" (tracert %GoogleDNS% >>%setpath%\%logname%.log&%setpath%\%logname%.log) else (tracert %GoogleDNS%)
pause
Goto End



:ping2
cls
echo      �ССССССССССССС�
echo      �U�@�@�ڨ��������E�_�{���@�@�U
echo      �ССССССССССССС�
echo �w��ϥΤڨ����������յ{���I
echo %date% %time%
echo.
echo �z��ܪ��覡�Oping�A���զ�m:%where%�C
echo.
echo �t�Υ��b�B�椤...�Ȱ��Ы�"<Control-C>"
type nul>%setpath%\%logname%.log
echo %date% %time%>>%setpath%\%logname%.log
echo �@�@�@�ССССССССССССС�>>%setpath%\%logname%.log
echo      �@�U�@�@�ڨ��������E�_�{���@�@ �U>>%setpath%\%logname%.log
echo �@�@�@�ССССССССССССС�>>%setpath%\%logname%.log
if "%log%"=="1" (ping %where% -t >>%setpath%\%logname%.log&%setpath%\%logname%.log) else (ping %where% -t)
pause
Goto End


:tracert2
cls
echo �@�@�@�ССССССССССССС�
echo      �U�@�@�ڨ��������E�_�{���@�@�U
echo �@�@�@�ССССССССССССС�
echo �w��ϥΤڨ����������յ{���I
echo %date% %time%
echo.
echo �z��ܪ��覡�Otracert�A���զ�m:%where%�C
echo.
echo �t�Υ��b�B�椤�еy��...
type nul>%setpath%\%logname%.log
echo %date% %time%>>%setpath%\%logname%.log
echo �@�@�@�ССССССССССССС�>>%setpath%\%logname%.log
echo      �@�U�@�@�ڨ��������E�_�{���@�@ �U>>%setpath%\%logname%.log
echo �@�@�@�ССССССССССССС�>>%setpath%\%logname%.log
if "%log%"=="1" (tracert %where% >>%setpath%\%logname%.log&%setpath%\%logname%.log) else (tracert %where%)
pause
Goto End


rem �{���O�_�~�����

:End
echo ------------------------------------------------------------------------------
echo.
set /p End=�O�_�����{��?�G1.yes 2.no�@�@
if "%End%"=="1" (exit) else (if "%End%"=="2" (cls&Goto run) else (echo ��J���~!�п�J"1"or"2"... &Goto End))
pause