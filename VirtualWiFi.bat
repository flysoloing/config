@echo off
cls
title ����WiFi������
:menu
cls
color 0A
echo.
echo                        ==================================
echo                        ��ѡ��Ҫ���еĲ�����ţ�Ȼ�󰴻س�
echo                        ==================================
echo.
echo                        [1].�鿴����WiFi�������
echo.
echo                        [2].��������WiFi
echo.
echo                        [3].�ر�����WiFi
echo.
echo                        [4].��������WiFi�ȵ�
echo.
echo                        [5].��������WiFi�ȵ�
echo.
echo                        [Q].�˳�
echo.
echo.
rem ѡ�����
:cho
set choice=
set /p choice=��ѡ����ţ�
IF NOT "%choice%"=="" SET choice=%choice:~0,1%
if /i "%choice%"=="1" (
    rem �鿴����WiFi�������
    netsh wlan show hostednetwork
)
if /i "%choice%"=="2" (
    rem ��������WiFi
    netsh wlan start hostednetwork
)
if /i "%choice%"=="3" (
    rem �ر�����WiFi
    netsh wlan stop hostednetwork
)
if /i "%choice%"=="4" (
    rem ��������WiFi�ȵ�
    netsh wlan set hostednetwork mode=allow ssid=NAME key=PASSWORD
)
if /i "%choice%"=="5" (
    rem ��������WiFi�ȵ�
    netsh wlan set hostednetwork mode=disallow ssid=NAME key=PASSWORD
)
if /i "%choice%"=="Q" (
    goto exit
)
echo.
goto cho
:exit
pause