@echo off
cls
title 虚拟WiFi控制器
:menu
cls
color 0A
echo.
echo                        ==================================
echo                        请选择要进行的操作序号，然后按回车
echo                        ==================================
echo.
echo                        [1].查看虚拟WiFi运行情况
echo.
echo                        [2].启动虚拟WiFi
echo.
echo                        [3].关闭虚拟WiFi
echo.
echo                        [4].启用虚拟WiFi热点
echo.
echo                        [5].禁用虚拟WiFi热点
echo.
echo                        [Q].退出
echo.
echo.
rem 选择操作
:cho
set choice=
set /p choice=请选择序号：
IF NOT "%choice%"=="" SET choice=%choice:~0,1%
if /i "%choice%"=="1" (
    rem 查看虚拟WiFi运行情况
    netsh wlan show hostednetwork
)
if /i "%choice%"=="2" (
    rem 启动虚拟WiFi
    netsh wlan start hostednetwork
)
if /i "%choice%"=="3" (
    rem 关闭虚拟WiFi
    netsh wlan stop hostednetwork
)
if /i "%choice%"=="4" (
    rem 启用虚拟WiFi热点
    netsh wlan set hostednetwork mode=allow ssid=NAME key=PASSWORD
)
if /i "%choice%"=="5" (
    rem 禁用虚拟WiFi热点
    netsh wlan set hostednetwork mode=disallow ssid=NAME key=PASSWORD
)
if /i "%choice%"=="Q" (
    goto exit
)
echo.
goto cho
:exit
pause