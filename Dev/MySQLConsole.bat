@echo off
cls
title MySQL�������̨
:menu
cls
color 0A
echo.
echo                        ==================================
echo                        ��ѡ��Ҫ���еĲ�����ţ�Ȼ�󰴻س�
echo                        ==================================
echo.
echo                        [1].����MySQL����
echo.
echo                        [2].�ر�MySQL����
echo.
echo                        [3].TEST
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
    rem �Ƚ���MySQL��װĿ¼��binĿ¼�£�Ȼ��ִ������MySQL��������
	cd D:\Program Files\MySQL\MySQL Server 5.6\bin
    NET START MySQL56
)
if /i "%choice%"=="2" (
    rem �Ƚ���MySQL��װĿ¼��binĿ¼�£�Ȼ��ִ�йر�MySQL��������
    cd D:\Program Files\MySQL\MySQL Server 5.6\bin
    NET STOP MySQL56
)
if /i "%choice%"=="3" (
    rem �Ƚ���MySQL��װĿ¼��binĿ¼�£�Ȼ��ִ�йر�MySQL��������
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