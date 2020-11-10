::来源 :网络
@echo off 
::设置CMD窗口字体颜色为0a 在CMD中输入命令 color /? 可查看颜色列表
color 0a
::设置CMD窗口显示模式为100列宽 20行高
MODE con: COLS=100 LINES=20
echo  -------------------
echo    choice 命令示例
echo  -------------------
echo.
echo.
:input
:: /c按键列表 /m提示内容 /d默认选择 /t等待秒数   /d 必须和 /t同时出现
choice  /c abcde /m "请输入" /d e /t 5
::choice  /c abcde
::用户选择的结果会按项目序号数字（从1开始）返回在errorlevel变量中
if %errorlevel%==1 echo 你选择了a
if %errorlevel%==2 echo 你选择了b
if %errorlevel%==3 echo 你选择了c
if %errorlevel%==4 echo 你选择了d
if %errorlevel%==5 echo 你选择了e
goto input