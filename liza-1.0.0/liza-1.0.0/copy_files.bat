@echo off
echo ========================================
echo КОПИРОВАНИЕ ФАЙЛОВ ДЛЯ ANDROID ПРИЛОЖЕНИЯ
echo ========================================

REM Создание папок
echo Создание структуры папок...
mkdir work\api 2>nul
mkdir work\js 2>nul
mkdir work\assets 2>nul
mkdir work\assets\css 2>nul
mkdir work\assets\js 2>nul
mkdir work\avtr 2>nul
mkdir work\avtr\api 2>nul
mkdir work\avtr\css 2>nul
mkdir work\avtr\js 2>nul
mkdir work\includes 2>nul
mkdir work\images 2>nul
mkdir work\avatars 2>nul
mkdir work\avtr\avatars 2>nul

echo.
echo ========================================
echo КОПИРОВАНИЕ ФАЙЛОВ ВЫСОКОГО ПРИОРИТЕТА
echo ========================================

REM Корневые файлы
echo Копирование корневых файлов...
copy app.js work\ 2>nul
copy styles.css work\ 2>nul
copy auth.html work\ 2>nul
copy login.php work\ 2>nul
copy login_username.php work\ 2>nul
copy register.php work\ 2>nul
copy chat.php work\ 2>nul
copy premium.php work\ 2>nul
copy profile.php work\ 2>nul
copy forgot_password.php work\ 2>nul
copy audio-call.php work\ 2>nul
copy logout.php work\ 2>nul
copy reset_password.php work\ 2>nul
copy verify_phone.php work\ 2>nul
copy verify_phone_call.php work\ 2>nul
copy simple-signal-test-websocket-external-js.html work\ 2>nul

REM JavaScript файлы
echo Копирование JavaScript файлов...
copy js\main-app.js work\js\ 2>nul
copy js\auth-system.js work\js\ 2>nul
copy js\messaging-system.js work\js\ 2>nul
copy js\p2p-system.js work\js\ 2>nul
copy js\p2p-functions.js work\js\ 2>nul
copy js\calls-websocket.js work\js\ 2>nul
copy js\ui-calls.js work\js\ 2>nul
copy js\config.js work\js\ 2>nul
copy js\connection-monitoring.js work\js\ 2>nul
copy js\ping-pong-monitoring.js work\js\ 2>nul
copy js\timeout-system.js work\js\ 2>nul
copy js\queue-system.js work\js\ 2>nul
copy js\p2p-management.js work\js\ 2>nul
copy js\calls-from-chat.js work\js\ 2>nul
copy js\friends-system.js work\js\ 2>nul
copy js\contacts-handler.js work\js\ 2>nul
copy js\indexeddb-storage.js work\js\ 2>nul
copy js\message-deletion-system.js work\js\ 2>nul
copy js\ui-indicators.js work\js\ 2>nul
copy js\localstorage-optimization.js work\js\ 2>nul
copy js\invite-system.js work\js\ 2>nul
copy js\request-names-loader.js work\js\ 2>nul
copy js\requests-counter.js work\js\ 2>nul
copy js\password-reset.js work\js\ 2>nul
copy js\avatar-handler.js work\js\ 2>nul

REM API файлы
echo Копирование API файлов...
copy api\login.php work\api\ 2>nul
copy api\register.php work\api\ 2>nul
copy api\check_auth.php work\api\ 2>nul
copy api\get_user_data.php work\api\ 2>nul
copy api\get_contacts.php work\api\ 2>nul
copy api\send_invitation.php work\api\ 2>nul
copy api\accept_invitation.php work\api\ 2>nul
copy api\reject_invitation.php work\api\ 2>nul
copy api\request_password_reset.php work\api\ 2>nul
copy api\check_call_status.php work\api\ 2>nul
copy api\save_new_password.php work\api\ 2>nul
copy api\upload_avatar.php work\api\ 2>nul
copy api\get_requests.php work\api\ 2>nul
copy api\get_sent_requests.php work\api\ 2>nul
copy api\get_rejected.php work\api\ 2>nul
copy api\search_user.php work\api\ 2>nul
copy api\clear_contacts.php work\api\ 2>nul
copy api\webrtc_signaling.php work\api\ 2>nul
copy api\signaling_server.php work\api\ 2>nul
copy api\get_requests_count.php work\api\ 2>nul
copy api\get_user_status.php work\api\ 2>nul
copy api\call_status.php work\api\ 2>nul
copy api\call_verification.php work\api\ 2>nul
copy api\telegram_confirm.php work\api\ 2>nul

REM Система аватаров
echo Копирование системы аватаров...
copy avtr\api\upload_avatar.php work\avtr\api\ 2>nul
copy avtr\api\change_password.php work\avtr\api\ 2>nul
copy avtr\api\update_status.php work\avtr\api\ 2>nul
copy avtr\api\get_user_data.php work\avtr\api\ 2>nul
copy avtr\css\avatar-styles.css work\avtr\css\ 2>nul
copy avtr\css\password-styles.css work\avtr\css\ 2>nul
copy avtr\css\profile-styles.css work\avtr\css\ 2>nul
copy avtr\js\avatar-handler.js work\avtr\js\ 2>nul
copy avtr\js\password-handler.js work\avtr\js\ 2>nul

REM Дополнительные файлы
echo Копирование дополнительных файлов...
copy assets\css\avatar-styles.css work\assets\css\ 2>nul
copy assets\css\style.css work\assets\css\ 2>nul
copy assets\js\app.js work\assets\js\ 2>nul
copy assets\js\webrtc-http.js work\assets\js\ 2>nul
copy assets\js\webrtc.js work\assets\js\ 2>nul
copy assets\js\websocket-client-wss-vkcloud.js work\assets\js\ 2>nul
copy assets\js\websocket-client.js work\assets\js\ 2>nul
copy includes\auth.php work\includes\ 2>nul
copy includes\contacts.php work\includes\ 2>nul
copy webrtc-config-alternative.js work\ 2>nul

echo.
echo ========================================
echo КОПИРОВАНИЕ ФАЙЛОВ СРЕДНЕГО ПРИОРИТЕТА
echo ========================================

copy api\check_verification.php work\api\ 2>nul
copy api\check_login_availability.php work\api\ 2>nul
copy api\premium_application.php work\api\ 2>nul

echo.
echo ========================================
echo КОПИРОВАНИЕ ФАЙЛОВ НИЗКОГО ПРИОРИТЕТА
echo ========================================

REM Тестовые HTML файлы
echo Копирование тестовых HTML файлов...
copy test-amber-theme.html work\ 2>nul
copy test-avatar-cache.html work\ 2>nul
copy test-call-type-display.html work\ 2>nul
copy test-chat-status.html work\ 2>nul
copy test-friends-search.html work\ 2>nul
copy test-incoming-call-avatar.html work\ 2>nul
copy test-message-sending.html work\ 2>nul
copy test-outgoing-call-avatar.html work\ 2>nul
copy test-selection-menu.html work\ 2>nul
copy api\simple-signal-test-websocket.html work\api\ 2>nul

REM Административные файлы
echo Копирование административных файлов...
copy check_users.php work\ 2>nul
copy check_user_status.php work\ 2>nul
copy api\update_schema.php work\api\ 2>nul
copy api\create_test_users.php work\api\ 2>nul
copy api\get_contacts_test.php work\api\ 2>nul
copy api\get_rejected_test.php work\api\ 2>nul
copy api\get_requests_test.php work\api\ 2>nul
copy api\send_invitation_test.php work\api\ 2>nul
copy api\test_auth.php work\api\ 2>nul

REM Документация
echo Копирование документации...
copy PROJECT_DATABASE_RULES.md work\ 2>nul
copy README.md work\ 2>nul
copy README_AUTH_SYSTEM.md work\ 2>nul
copy GITHUB_SETUP.md work\ 2>nul
copy TELEGRAM_BOT_SETUP.md work\ 2>nul
copy LizaApp_Neon_Theme_Task.md work\ 2>nul
copy AI_ASSISTANT_RULES.md work\ 2>nul

REM Статические ресурсы
echo Копирование статических ресурсов...
copy logo.png work\ 2>nul
copy background.png work\ 2>nul
copy favicon.ico work\ 2>nul
copy images\background.png work\images\ 2>nul

REM Аватары
echo Копирование аватаров...
xcopy avatars\*.jpg work\avatars\ /Y 2>nul
xcopy avtr\avatars\*.jpg work\avtr\avatars\ /Y 2>nul

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