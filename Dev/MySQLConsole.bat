@echo off
cls
title MySQL服务控制台
:menu
cls
color 0A
echo.
echo                        ==================================
echo                        请选择要进行的操作序号，然后按回车
echo                        ==================================
echo.
echo                        [1].启动MySQL服务
echo.
echo                        [2].关闭MySQL服务
echo.
echo                        [3].TEST
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
    rem 先进入MySQL安装目录的bin目录下，然后执行启动MySQL服务命令
	cd D:\Program Files\MySQL\MySQL Server 5.6\bin
    NET START MySQL56
)
if /i "%choice%"=="2" (
    rem 先进入MySQL安装目录的bin目录下，然后执行关闭MySQL服务命令
    cd D:\Program Files\MySQL\MySQL Server 5.6\bin
    NET STOP MySQL56
)
if /i "%choice%"=="3" (
    rem 先进入MySQL安装目录的bin目录下，然后执行关闭MySQL服务命令
    cd D:\Program Files\MySQL\MySQL Server 5.6\bin
    NET ST MySQL56
)
if /i "%choice%"=="Q" (
    goto exit
)
echo.
goto cho
:exit
pause