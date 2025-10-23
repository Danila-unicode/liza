<?php
header('Content-Type: application/json');

// Подключение к базе данных
$host = 'localhost';
$dbname = 'lizaapp_dsfg12df1121q5sd2694';
$username = 'lizaapp_1w1d2sd3268';
$password = 'aM1oX3yE0j';

try {
    $pdo = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8", $username, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    
    // Получаем данные из POST запроса
    $input = json_decode(file_get_contents('php://input'), true);
    $phone = $input['phone'] ?? '';
    
    if (empty($phone)) {
        echo json_encode([
            'success' => false,
            'message' => 'Номер телефона не указан'
        ]);
        exit;
    }
    
    // Нормализуем номер - добавляем + если его нет
    if (!str_starts_with($phone, '+')) {
        $phone = '+' . $phone;
    }
    
    // Ищем пользователя
    $stmt = $pdo->prepare("SELECT id, username, phone_verified FROM users WHERE username = ?");
    $stmt->execute([$phone]);
    $user = $stmt->fetch(PDO::FETCH_ASSOC);
    
    if (!$user) {
        echo json_encode([
            'success' => false,
            'message' => 'Пользователь не найден'
        ]);
        exit;
    }
    
    // Проверяем статус подтверждения
    $verified = ($user['phone_verified'] == 1 || $user['phone_verified'] === '1' || $user['phone_verified'] === true);
    
    echo json_encode([
        'success' => true,
        'verified' => $verified,
        'phone_verified' => $user['phone_verified'],
        'user_id' => $user['id']
    ]);
    
} catch(PDOException $e) {
    echo json_encode([
        'success' => false,
        'message' => 'Ошибка подключения к базе данных: ' . $e->getMessage()
    ]);
}
?>
