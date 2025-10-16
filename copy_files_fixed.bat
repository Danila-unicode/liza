@echo off
echo ========================================
echo КОПИРОВАНИЕ ФАЙЛОВ ДЛЯ ANDROID ПРИЛОЖЕНИЯ
echo ========================================

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
echo КОПИРОВАНИЕ ФАЙЛОВ ВЫСОКОГО ПРИОРИТЕТА
echo ========================================

REM Корневые файлы
echo Копирование корневых файлов...
copy ..\app.js . 2>nul
copy ..\styles.css . 2>nul
copy ..\auth.html . 2>nul
copy ..\login.php . 2>nul
copy ..\login_username.php . 2>nul
copy ..\register.php . 2>nul
copy ..\chat.php . 2>nul
copy ..\premium.php . 2>nul
copy ..\profile.php . 2>nul
copy ..\forgot_password.php . 2>nul
copy ..\audio-call.php . 2>nul
copy ..\logout.php . 2>nul
copy ..\reset_password.php . 2>nul
copy ..\verify_phone.php . 2>nul
copy ..\verify_phone_call.php . 2>nul
copy ..\simple-signal-test-websocket-external-js.html . 2>nul

REM JavaScript файлы
echo Копирование JavaScript файлов...
copy ..\js\main-app.js js\ 2>nul
copy ..\js\auth-system.js js\ 2>nul
copy ..\js\messaging-system.js js\ 2>nul
copy ..\js\p2p-system.js js\ 2>nul
copy ..\js\p2p-functions.js js\ 2>nul
copy ..\js\calls-websocket.js js\ 2>nul
copy ..\js\ui-calls.js js\ 2>nul
copy ..\js\config.js js\ 2>nul
copy ..\js\connection-monitoring.js js\ 2>nul
copy ..\js\ping-pong-monitoring.js js\ 2>nul
copy ..\js\timeout-system.js js\ 2>nul
copy ..\js\queue-system.js js\ 2>nul
copy ..\js\p2p-management.js js\ 2>nul
copy ..\js\calls-from-chat.js js\ 2>nul
copy ..\js\friends-system.js js\ 2>nul
copy ..\js\contacts-handler.js js\ 2>nul
copy ..\js\indexeddb-storage.js js\ 2>nul
copy ..\js\message-deletion-system.js js\ 2>nul
copy ..\js\ui-indicators.js js\ 2>nul
copy ..\js\localstorage-optimization.js js\ 2>nul
copy ..\js\invite-system.js js\ 2>nul
copy ..\js\request-names-loader.js js\ 2>nul
copy ..\js\requests-counter.js js\ 2>nul
copy ..\js\password-reset.js js\ 2>nul
copy ..\js\avatar-handler.js js\ 2>nul

REM API файлы
echo Копирование API файлов...
copy ..\api\login.php api\ 2>nul
copy ..\api\register.php api\ 2>nul
copy ..\api\check_auth.php api\ 2>nul
copy ..\api\get_user_data.php api\ 2>nul
copy ..\api\get_contacts.php api\ 2>nul
copy ..\api\send_invitation.php api\ 2>nul
copy ..\api\accept_invitation.php api\ 2>nul
copy ..\api\reject_invitation.php api\ 2>nul
copy ..\api\request_password_reset.php api\ 2>nul
copy ..\api\check_call_status.php api\ 2>nul
copy ..\api\save_new_password.php api\ 2>nul
copy ..\api\upload_avatar.php api\ 2>nul
copy ..\api\get_requests.php api\ 2>nul
copy ..\api\get_sent_requests.php api\ 2>nul
copy ..\api\get_rejected.php api\ 2>nul
copy ..\api\search_user.php api\ 2>nul
copy ..\api\clear_contacts.php api\ 2>nul
copy ..\api\webrtc_signaling.php api\ 2>nul
copy ..\api\signaling_server.php api\ 2>nul
copy ..\api\get_requests_count.php api\ 2>nul
copy ..\api\get_user_status.php api\ 2>nul
copy ..\api\call_status.php api\ 2>nul
copy ..\api\call_verification.php api\ 2>nul
copy ..\api\telegram_confirm.php api\ 2>nul

REM Система аватаров
echo Копирование системы аватаров...
copy ..\avtr\api\upload_avatar.php avtr\api\ 2>nul
copy ..\avtr\api\change_password.php avtr\api\ 2>nul
copy ..\avtr\api\update_status.php avtr\api\ 2>nul
copy ..\avtr\api\get_user_data.php avtr\api\ 2>nul
copy ..\avtr\css\avatar-styles.css avtr\css\ 2>nul
copy ..\avtr\css\password-styles.css avtr\css\ 2>nul
copy ..\avtr\css\profile-styles.css avtr\css\ 2>nul
copy ..\avtr\js\avatar-handler.js avtr\js\ 2>nul
copy ..\avtr\js\password-handler.js avtr\js\ 2>nul

REM Дополнительные файлы
echo Копирование дополнительных файлов...
copy ..\assets\css\avatar-styles.css assets\css\ 2>nul
copy ..\assets\css\style.css assets\css\ 2>nul
copy ..\assets\js\app.js assets\js\ 2>nul
copy ..\assets\js\webrtc-http.js assets\js\ 2>nul
copy ..\assets\js\webrtc.js assets\js\ 2>nul
copy ..\assets\js\websocket-client-wss-vkcloud.js assets\js\ 2>nul
copy ..\assets\js\websocket-client.js assets\js\ 2>nul
copy ..\includes\auth.php includes\ 2>nul
copy ..\includes\contacts.php includes\ 2>nul
copy ..\webrtc-config-alternative.js . 2>nul

echo.
echo ========================================
echo КОПИРОВАНИЕ ФАЙЛОВ СРЕДНЕГО ПРИОРИТЕТА
echo ========================================

copy ..\api\check_verification.php api\ 2>nul
copy ..\api\check_login_availability.php api\ 2>nul
copy ..\api\premium_application.php api\ 2>nul

echo.
echo ========================================
echo КОПИРОВАНИЕ ФАЙЛОВ НИЗКОГО ПРИОРИТЕТА
echo ========================================

REM Тестовые HTML файлы
echo Копирование тестовых HTML файлов...
copy ..\test-amber-theme.html . 2>nul
copy ..\test-avatar-cache.html . 2>nul
copy ..\test-call-type-display.html . 2>nul
copy ..\test-chat-status.html . 2>nul
copy ..\test-friends-search.html . 2>nul
copy ..\test-incoming-call-avatar.html . 2>nul
copy ..\test-message-sending.html . 2>nul
copy ..\test-outgoing-call-avatar.html . 2>nul
copy ..\test-selection-menu.html . 2>nul
copy ..\api\simple-signal-test-websocket.html api\ 2>nul

REM Административные файлы
echo Копирование административных файлов...
copy ..\check_users.php . 2>nul
copy ..\check_user_status.php . 2>nul
copy ..\api\update_schema.php api\ 2>nul
copy ..\api\create_test_users.php api\ 2>nul
copy ..\api\get_contacts_test.php api\ 2>nul
copy ..\api\get_rejected_test.php api\ 2>nul
copy ..\api\get_requests_test.php api\ 2>nul
copy ..\api\send_invitation_test.php api\ 2>nul
copy ..\api\test_auth.php api\ 2>nul

REM Документация
echo Копирование документации...
copy ..\PROJECT_DATABASE_RULES.md . 2>nul
copy ..\README.md . 2>nul
copy ..\README_AUTH_SYSTEM.md . 2>nul
copy ..\GITHUB_SETUP.md . 2>nul
copy ..\TELEGRAM_BOT_SETUP.md . 2>nul
copy ..\LizaApp_Neon_Theme_Task.md . 2>nul
copy ..\AI_ASSISTANT_RULES.md . 2>nul

REM Статические ресурсы
echo Копирование статических ресурсов...
copy ..\logo.png . 2>nul
copy ..\background.png . 2>nul
copy ..\favicon.ico . 2>nul
copy ..\images\background.png images\ 2>nul

REM Аватары
echo Копирование аватаров...
xcopy ..\avatars\*.jpg avatars\ /Y 2>nul
xcopy ..\avtr\avatars\*.jpg avtr\avatars\ /Y 2>nul

echo.
echo ========================================
echo КОПИРОВАНИЕ ЗАВЕРШЕНО!
echo ========================================
echo.
echo Все файлы скопированы в папку work\
echo Структура папок создана
echo Готово для Android разработки!
echo.
pause
