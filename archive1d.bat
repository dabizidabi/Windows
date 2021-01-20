@echo off

cd D:\
D:

set day=%DATE:~0,2%
set month=%DATE:~3,2%
set year=%DATE:~6,4%

#копіювання архіву
copy D:\shares\IVS_b1\ASUE\archive\work.rar D:\shares\IVS_b1\ASUE\archive\%year%%month%%day%.rar

#видалення архіву з якого копіювали
start winrar d D:\shares\IVS_b1\ASUE\archive\work.rar

#видалення файлів каталогу за попередню добу
del /A:-A /Q D:\shares\IVS_b1\ASUE\loaded\*

#видалення архівів старше одного року
forfiles /p D:\shares\IVS_b1\ASUE\archive\ /m *.rar /d -365 "cmd /c del @path /q"
