@echo off
echo Очистка отладочной информации из HTML файлов...

REM Очистка HTML файлов
for %%f in (*.html) do (
    echo Очистка %%f...
    findstr /v "console.log" "%%f" > "%%f.tmp"
    findstr /v "console.error" "%%f.tmp" > "%%f.tmp2"
    findstr /v "console.warn" "%%f.tmp2" > "%%f.tmp3"
    findstr /v "console.debug" "%%f.tmp3" > "%%f"
    del "%%f.tmp" "%%f.tmp2" "%%f.tmp3"
)

REM Очистка файлов в папке api/
for %%f in (api\*.html) do (
    echo Очистка %%f...
    findstr /v "console.log" "%%f" > "%%f.tmp"
    findstr /v "console.error" "%%f.tmp" > "%%f.tmp2"
    findstr /v "console.warn" "%%f.tmp2" > "%%f.tmp3"
    findstr /v "console.debug" "%%f.tmp3" > "%%f"
    del "%%f.tmp" "%%f.tmp2" "%%f.tmp3"
)

echo Очистка HTML файлов завершена!
