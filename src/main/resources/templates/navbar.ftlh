<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@400;700&display=swap" rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Название страницы</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f8f9fa; /* Цвет фона страницы */
            font-family: 'Oswald', sans-serif; /* Применяем шрифт Oswald ко всему тексту */
        }
        .navbar {
            background-color: #343a40; /* Цвет фона навигационной панели */
            position: fixed;
            top: 0;
            width: 100%;
            z-index: 1000; /* Чтобы панель была поверх другого контента */
        }
        .navbar-brand, .nav-link {
            color: #ffffff; /* Устанавливаем белый цвет текста навигационной панели */
            transition: color 0.3s; /* Плавный переход цвета */
        }
        .navbar-brand:hover, .nav-link:hover {
            color: #d2b215; /* Изменяем цвет на желтый при наведении */
            text-decoration: underline; /* Подчеркивание при наведении */
        }
        .content {
            padding-top: 80px; /* Отступ сверху, чтобы контент не скрывался под навигацией */
        }
    </style>
</head>
<body>
<nav class="navbar navbar-expand-lg">
    <div class="container">
        <a class="navbar-brand" href="http://localhost:8084">Oxxxymiron</a>
        <div class="collapse navbar-collapse">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="http://localhost:8084/tours">Туры</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="http://localhost:8084/contact">Связь</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
<div class="container content">
    <!-- Основной контент страницы -->
</div>
</body>
</html>
