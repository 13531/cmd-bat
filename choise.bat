::��Դ :����
@echo off 
::����CMD����������ɫΪ0a ��CMD���������� color /? �ɲ鿴��ɫ�б�
color 0a
::����CMD������ʾģʽΪ100�п� 20�и�
MODE con: COLS=100 LINES=20
echo  -------------------
echo    choice ����ʾ��
echo  -------------------
echo.
echo.
:input
:: /c�����б� /m��ʾ���� /dĬ��ѡ�� /t�ȴ�����   /d ����� /tͬʱ����
choice  /c abcde /m "������" /d e /t 5
::choice  /c abcde
::�û�ѡ��Ľ���ᰴ��Ŀ������֣���1��ʼ��������errorlevel������
if %errorlevel%==1 echo ��ѡ����a
if %errorlevel%==2 echo ��ѡ����b
if %errorlevel%==3 echo ��ѡ����c
if %errorlevel%==4 echo ��ѡ����d
if %errorlevel%==5 echo ��ѡ����e
goto input