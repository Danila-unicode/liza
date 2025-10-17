@echo off
echo ========================================
echo КОПИРОВАНИЕ ФАЙЛОВ ДЛЯ ANDROID ПРИЛОЖЕНИЯ
echo ========================================

REM Переходим в папку work
cd /d "%~dp0"

REM Создание папок
echo Создание структуры папок...
mkdir api 2>nul
mkdir js 2>nul
mkdir assets 2>nul
mkdir assets\css 2>nul
mkdir assets\js 2>nul
mkdir avtr 2>nul
mkdir avtr\api 2>nul
mkdir avtr\css 2>nul
mkdir avtr\js 2>nul
mkdir includes 2>nul
mkdir images 2>nul
mkdir avatars 2>nul
mkdir avtr\avatars 2>nul

echo.
echo ========================================
echo КОПИРОВАНИЕ ОСНОВНЫХ ФАЙЛОВ
echo ========================================

REM Функция копирования с проверкой
set "copied=0"
set "skipped=0"

REM Корневые файлы
echo Копирование корневых файлов...
if exist "..\app.js" (copy "..\app.js" . >nul 2>&1 && echo [OK] app.js && set /a copied+=1) else (echo [SKIP] app.js - не найден && set /a skipped+=1)
if exist "..\styles.css" (copy "..\styles.css" . >nul 2>&1 && echo [OK] styles.css && set /a copied+=1) else (echo [SKIP] styles.css - не найден && set /a skipped+=1)
if exist "..\auth.html" (copy "..\auth.html" . >nul 2>&1 && echo [OK] auth.html && set /a copied+=1) else (echo [SKIP] auth.html - не найден && set /a skipped+=1)
if exist "..\login.php" (copy "..\login.php" . >nul 2>&1 && echo [OK] login.php && set /a copied+=1) else (echo [SKIP] login.php - не найден && set /a skipped+=1)
if exist "..\login_username.php" (copy "..\login_username.php" . >nul 2>&1 && echo [OK] login_username.php && set /a copied+=1) else (echo [SKIP] login_username.php - не найден && set /a skipped+=1)
if exist "..\register.php" (copy "..\register.php" . >nul 2>&1 && echo [OK] register.php && set /a copied+=1) else (echo [SKIP] register.php - не найден && set /a skipped+=1)
if exist "..\chat.php" (copy "..\chat.php" . >nul 2>&1 && echo [OK] chat.php && set /a copied+=1) else (echo [SKIP] chat.php - не найден && set /a skipped+=1)
if exist "..\premium.php" (copy "..\premium.php" . >nul 2>&1 && echo [OK] premium.php && set /a copied+=1) else (echo [SKIP] premium.php - не найден && set /a skipped+=1)
if exist "..\profile.php" (copy "..\profile.php" . >nul 2>&1 && echo [OK] profile.php && set /a copied+=1) else (echo [SKIP] profile.php - не найден && set /a skipped+=1)
if exist "..\forgot_password.php" (copy "..\forgot_password.php" . >nul 2>&1 && echo [OK] forgot_password.php && set /a copied+=1) else (echo [SKIP] forgot_password.php - не найден && set /a skipped+=1)
if exist "..\audio-call.php" (copy "..\audio-call.php" . >nul 2>&1 && echo [OK] audio-call.php && set /a copied+=1) else (echo [SKIP] audio-call.php - не найден && set /a skipped+=1)
if exist "..\logout.php" (copy "..\logout.php" . >nul 2>&1 && echo [OK] logout.php && set /a copied+=1) else (echo [SKIP] logout.php - не найден && set /a skipped+=1)
if exist "..\simple-signal-test-websocket-external-js.html" (copy "..\simple-signal-test-websocket-external-js.html" . >nul 2>&1 && echo [OK] simple-signal-test-websocket-external-js.html && set /a copied+=1) else (echo [SKIP] simple-signal-test-websocket-external-js.html - не найден && set /a skipped+=1)

REM JavaScript файлы
echo.
echo Копирование JavaScript файлов...
if exist "..\js\main-app.js" (copy "..\js\main-app.js" js\ >nul 2>&1 && echo [OK] js\main-app.js && set /a copied+=1) else (echo [SKIP] js\main-app.js - не найден && set /a skipped+=1)
if exist "..\js\auth-system.js" (copy "..\js\auth-system.js" js\ >nul 2>&1 && echo [OK] js\auth-system.js && set /a copied+=1) else (echo [SKIP] js\auth-system.js - не найден && set /a skipped+=1)
if exist "..\js\messaging-system.js" (copy "..\js\messaging-system.js" js\ >nul 2>&1 && echo [OK] js\messaging-system.js && set /a copied+=1) else (echo [SKIP] js\messaging-system.js - не найден && set /a skipped+=1)
if exist "..\js\p2p-system.js" (copy "..\js\p2p-system.js" js\ >nul 2>&1 && echo [OK] js\p2p-system.js && set /a copied+=1) else (echo [SKIP] js\p2p-system.js - не найден && set /a skipped+=1)
if exist "..\js\config.js" (copy "..\js\config.js" js\ >nul 2>&1 && echo [OK] js\config.js && set /a copied+=1) else (echo [SKIP] js\config.js - не найден && set /a skipped+=1)
if exist "..\js\friends-system.js" (copy "..\js\friends-system.js" js\ >nul 2>&1 && echo [OK] js\friends-system.js && set /a copied+=1) else (echo [SKIP] js\friends-system.js - не найден && set /a skipped+=1)
if exist "..\js\password-reset.js" (copy "..\js\password-reset.js" js\ >nul 2>&1 && echo [OK] js\password-reset.js && set /a copied+=1) else (echo [SKIP] js\password-reset.js - не найден && set /a skipped+=1)

REM API файлы
echo.
echo Копирование API файлов...
if exist "..\api\login.php" (copy "..\api\login.php" api\ >nul 2>&1 && echo [OK] api\login.php && set /a copied+=1) else (echo [SKIP] api\login.php - не найден && set /a skipped+=1)
if exist "..\api\register.php" (copy "..\api\register.php" api\ >nul 2>&1 && echo [OK] api\register.php && set /a copied+=1) else (echo [SKIP] api\register.php - не найден && set /a skipped+=1)
if exist "..\api\check_auth.php" (copy "..\api\check_auth.php" api\ >nul 2>&1 && echo [OK] api\check_auth.php && set /a copied+=1) else (echo [SKIP] api\check_auth.php - не найден && set /a skipped+=1)
if exist "..\api\get_user_data.php" (copy "..\api\get_user_data.php" api\ >nul 2>&1 && echo [OK] api\get_user_data.php && set /a copied+=1) else (echo [SKIP] api\get_user_data.php - не найден && set /a skipped+=1)
if exist "..\api\get_contacts.php" (copy "..\api\get_contacts.php" api\ >nul 2>&1 && echo [OK] api\get_contacts.php && set /a copied+=1) else (echo [SKIP] api\get_contacts.php - не найден && set /a skipped+=1)
if exist "..\api\send_invitation.php" (copy "..\api\send_invitation.php" api\ >nul 2>&1 && echo [OK] api\send_invitation.php && set /a copied+=1) else (echo [SKIP] api\send_invitation.php - не найден && set /a skipped+=1)
if exist "..\api\accept_invitation.php" (copy "..\api\accept_invitation.php" api\ >nul 2>&1 && echo [OK] api\accept_invitation.php && set /a copied+=1) else (echo [SKIP] api\accept_invitation.php - не найден && set /a skipped+=1)
if exist "..\api\reject_invitation.php" (copy "..\api\reject_invitation.php" api\ >nul 2>&1 && echo [OK] api\reject_invitation.php && set /a copied+=1) else (echo [SKIP] api\reject_invitation.php - не найден && set /a skipped+=1)
if exist "..\api\request_password_reset.php" (copy "..\api\request_password_reset.php" api\ >nul 2>&1 && echo [OK] api\request_password_reset.php && set /a copied+=1) else (echo [SKIP] api\request_password_reset.php - не найден && set /a skipped+=1)
if exist "..\api\check_call_status.php" (copy "..\api\check_call_status.php" api\ >nul 2>&1 && echo [OK] api\check_call_status.php && set /a copied+=1) else (echo [SKIP] api\check_call_status.php - не найден && set /a skipped+=1)
if exist "..\api\save_new_password.php" (copy "..\api\save_new_password.php" api\ >nul 2>&1 && echo [OK] api\save_new_password.php && set /a copied+=1) else (echo [SKIP] api\save_new_password.php - не найден && set /a skipped+=1)

REM Статические ресурсы
echo.
echo Копирование статических ресурсов...
if exist "..\logo.png" (copy "..\logo.png" . >nul 2>&1 && echo [OK] logo.png && set /a copied+=1) else (echo [SKIP] logo.png - не найден && set /a skipped+=1)
if exist "..\background.png" (copy "..\background.png" . >nul 2>&1 && echo [OK] background.png && set /a copied+=1) else (echo [SKIP] background.png - не найден && set /a skipped+=1)
if exist "..\favicon.ico" (copy "..\favicon.ico" . >nul 2>&1 && echo [OK] favicon.ico && set /a copied+=1) else (echo [SKIP] favicon.ico - не найден && set /a skipped+=1)

echo.
echo ========================================
echo РЕЗУЛЬТАТ КОПИРОВАНИЯ
echo ========================================
echo Скопировано файлов: %copied%
echo Пропущено файлов: %skipped%
echo.
echo ========================================
echo КОПИРОВАНИЕ ЗАВЕРШЕНО!
echo ========================================
echo.
echo Все доступные файлы скопированы в папку work\
echo Структура папок создана
echo Готово для Android разработки!
echo.
pause
