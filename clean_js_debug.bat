@echo off
echo Очистка отладочной информации из JavaScript файлов...

REM Очистка файлов в папке js/
for %%f in (js\*.js) do (
    echo Очистка %%f...
    findstr /v "console.log" "%%f" > "%%f.tmp"
    findstr /v "console.error" "%%f.tmp" > "%%f.tmp2"
    findstr /v "console.warn" "%%f.tmp2" > "%%f.tmp3"
    findstr /v "console.debug" "%%f.tmp3" > "%%f"
    del "%%f.tmp" "%%f.tmp2" "%%f.tmp3"
)

REM Очистка файлов в папке assets/js/
for %%f in (assets\js\*.js) do (
    echo Очистка %%f...
    findstr /v "console.log" "%%f" > "%%f.tmp"
    findstr /v "console.error" "%%f.tmp" > "%%f.tmp2"
    findstr /v "console.warn" "%%f.tmp2" > "%%f.tmp3"
    findstr /v "console.debug" "%%f.tmp3" > "%%f"
    del "%%f.tmp" "%%f.tmp2" "%%f.tmp3"
)

REM Очистка файлов в папке avtr/js/
for %%f in (avtr\js\*.js) do (
    echo Очистка %%f...
    findstr /v "console.log" "%%f" > "%%f.tmp"
    findstr /v "console.error" "%%f.tmp" > "%%f.tmp2"
    findstr /v "console.warn" "%%f.tmp2" > "%%f.tmp3"
    findstr /v "console.debug" "%%f.tmp3" > "%%f"
    del "%%f.tmp" "%%f.tmp2" "%%f.tmp3"
)

echo Очистка JavaScript файлов завершена!
