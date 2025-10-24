@echo off
echo Очистка отладочной информации из PHP файлов...

REM Очистка файлов в папке api/
for %%f in (api\*.php) do (
    echo Очистка %%f...
    findstr /v "error_log" "%%f" > "%%f.tmp"
    findstr /v "var_dump" "%%f.tmp" > "%%f.tmp2"
    findstr /v "print_r" "%%f.tmp2" > "%%f.tmp3"
    findstr /v "debugger" "%%f.tmp3" > "%%f"
    del "%%f.tmp" "%%f.tmp2" "%%f.tmp3"
)

REM Очистка файлов в папке avtr/api/
for %%f in (avtr\api\*.php) do (
    echo Очистка %%f...
    findstr /v "error_log" "%%f" > "%%f.tmp"
    findstr /v "var_dump" "%%f.tmp" > "%%f.tmp2"
    findstr /v "print_r" "%%f.tmp2" > "%%f.tmp3"
    findstr /v "debugger" "%%f.tmp3" > "%%f"
    del "%%f.tmp" "%%f.tmp2" "%%f.tmp3"
)

REM Очистка корневых PHP файлов
for %%f in (*.php) do (
    echo Очистка %%f...
    findstr /v "error_log" "%%f" > "%%f.tmp"
    findstr /v "var_dump" "%%f.tmp" > "%%f.tmp2"
    findstr /v "print_r" "%%f.tmp2" > "%%f.tmp3"
    findstr /v "debugger" "%%f.tmp3" > "%%f"
    del "%%f.tmp" "%%f.tmp2" "%%f.tmp3"
)

echo Очистка PHP файлов завершена!
