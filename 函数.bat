::��Դ:����
@echo off
set "var1=some hopefully not important string"
echo.call myDosFunc
call:myDosFunc 13 14
echo.return myDosFunc: %var1%
echo.%resVal%
@pause
goto:eof
 
 
::---------------------------------------------------------------------
::--�ڲ��v�����x��
::---------------------------------------------------------------------
 
:myDosFunc
echo. hi myDosFunc!!!
::����%1~%9��ȡ������%0,��ʾ�������ļ�����
echo.%~1 %~2
::û�к�������ֵ���塣����ͨ��ȫ�ֱ������ݷ���ֵ
set a=1
set /a res=%~1+%~2
set "var1=%~1+%~2=%res%"
set resVal=res is %res%
goto:eof

