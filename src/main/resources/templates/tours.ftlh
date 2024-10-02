<!DOCTYPE html>
<html lang="ru">
<head>
    <link rel="icon" href="/images/znakkr.png" type="image/x-icon">
    <link rel="shortcut icon" href="/images/znakkr.png" type="image/x-icon">
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@400;700&display=swap" rel="stylesheet">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Туры</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background-image: url('/images/BolshlZnak.jpg'); /* Путь к вашему изображению */
            background-size: contain; /* Изображение будет масштабироваться по размеру контейнера */
            background-repeat: no-repeat; /* Не повторять изображение */
            background-position: top; /* Изображение будет фиксировано сверху */
            background-color: #000001; /* Цвет фона черный */
            color: #333; /* Цвет текста на странице */
            font-family: Arial, sans-serif; /* Шрифт для текста */
            min-height: 100vh; /* Минимальная высота для фона изображения - 100% экрана */
        }

        .black-background {
            background-color: #000001; /* Черный фон */
            width: 100%; /* Ширина блока 100% */
            height: auto; /* Высота блока будет зависеть от контента */
            padding-bottom: 100px; /* Отступ снизу для доп. пространства */
        }
        vbar {
            background-color: rgba(0, 0, 0, 0.8);
            padding: 10px 0;
        }
        .nav-link {
            color: #f0f0f0; /* Замените на желаемый цвет */
        }
        .nav-link:hover {
            color: #d2b215; /* Замените на цвет при наведении */
        }
        .navbar-brand {
            font-family: 'Oswald', sans-serif;
            color: #f0f0f0; /* Замените на желаемый цвет */
        }
        .navbar-brand:hover {
            color: #d2b215; /* Замените на цвет при наведении */
        }


        .tour-cards {
            padding: 600px 0 50px;
        }

        .card {
            border: none;
            background-color: transparent; /* Сделан прозрачным для видимости фона */
            margin-bottom: 20px;
            padding: 0;
        }

        .card-info {
            display: flex;
            align-items: center;
            width: 100%;
        }

        /* Стиль ячейки для даты */
        .tour-date {
            width: 80px;
            height: 80px;
            background-color: #f8f9fa;
            color: #000;
            border-radius: 5px;
            display: flex;
            font-family: 'Oswald', sans-serif;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            text-align: center;
            font-size: 16px;
            font-weight: bold;
            margin-right: 15px;
        }

        .tour-date div {
            line-height: 1.2;
        }

        .tour-date div:first-child {
            font-size: 20px;
        }

        /* Стиль ячейки с городом и страной */
        .tour-location {
            text-transform: uppercase;
            flex-grow: 1;
            background-color: #f8f9fa;
            padding: 10px;
            border-radius: 5px;
            display: flex;
            font-family: 'Oswald', sans-serif;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            font-size: 16px;
            width: 200px;
            height: 80px;
            color: #000000;
        }

        .tour-location strong {
            font-size: 18px;
            font-weight: bold;
        }

        .tour-location span {
            font-size: 12px;
            color: #666;
        }

        /* Стиль ячейки с кнопкой */
        .tour-ticket {
            background-color: #f8f9fa;
            border: none;
            width: 120px;
            color: #000;
            font-size: 16px;
            font-weight: bold;
            font-family: 'Oswald', sans-serif;
            padding: 10px;
            text-align: center;
            border-radius: 5px;
            white-space: nowrap;
            margin-left: 15px;
            height: 80px;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .tour-ticket:hover {
            background-color: #d3d3d3;
        }
        .oswald {
            font-family: 'Oswald', sans-serif; /* Применяем шрифт Oswald */
            font-weight: 700; /* Жирный шрифт */
            color: black; /* Черный цвет текста */
        }
        .menu {
            position: fixed; /* Фиксированное положение */
            top: 10px; /* Отступ сверху */
            right: 20px; /* Отступ справа */
            z-index: 1001;
        }

        .burger {
            position: relative;
            border: none;
            background: transparent; /* Фон прозрачный */
            width: 40px;
            height: 26px;
            cursor: pointer; /* Добавлено для изменения курсора */
        }

        .burger::before,
        .burger::after {
            content: '';
            left: 0;
            position: absolute;
            display: block;
            width: 100%;
            height: 4px;
            border-radius: 10px;
            background: #ffffff;
        }

        .burger::before {
            top: 0;
            box-shadow: 0 11px 0 #000;
            transition: top .3s, transform .3s;
        }

        .burger::after {
            bottom: 0;
            transition: bottom .3s, transform .3s;
        }

        .burger.active::before {
            top: 11px;
            transform: rotate(45deg);
            box-shadow: 0 6px 0 rgba(0,0,0,0);
        }

        .burger.active::after {
            bottom: 11px;
            transform: rotate(-45deg);
        }

        .menu-list {
            display: none; /* Скрываем меню по умолчанию */
            list-style: none;
            padding: 0;
            margin: 0;
            background: rgba(0, 0, 0, 0.7); /* Полупрозрачный фон для меню */
            position: absolute;
            top: 50px; /* Позиционирование ниже бургер-меню */
            right: 0;
            width: 200px; /* Ширина меню */
            border-radius: 5px;
            z-index: 1002;
        }

        .menu-list.active {
            display: block; /* Показываем меню при активном классе */
        }

        .menu-item {
            display: block;
            padding: 10px 15px;
            color: white;
            text-decoration: none;
        }

        .menu-item:hover {
            background: #d2b215; /* Подсветка при наведении */
        }
        .burger div {
            position: absolute; /* Позиционирование для центральной линии */
            top: 11px; /* Положение в середине бургер-меню */
            left: 0;
            width: 100%;
            height: 4px; /* Высота центральной линии */
            background: #ffffff; /* Цвет для центральной линии */
            border-radius: 10px; /* Радиус для закругления */
            transition: background .3s; /* Плавный переход при наведении */
        }
        .burger.active div {
            background: rgba(255, 87, 51, 0);
            display: none;
        }


    </style>
</head>
<body>

<div class="menu">
    <input type="checkbox" id="burger-checkbox" class="burger-checkbox" hidden>
    <label for="burger-checkbox" class="burger">
        <div></div>
    </label>
    <ul class="menu-list">
        <li><a href="http://localhost:8084" class="menu-item">Oxxxymiron</a></li>
        <li><a href="http://localhost:8084/tours" class="menu-item">Туры</a></li>
        <li><a href="http://localhost:8084/contact" class="menu-item">Связь</a></li>
        <li><a href="http://localhost:8084/login" class="menu-item">Зарегистрироваться</a></li>
    </ul>
</div>



<!-- Секция с картами туров -->
<div class="container tour-cards">
    <div class="row">
        <!-- Карта тура 1 -->
        <div class="col-md-12">
            <div class="card">
                <div class="card-info">
                    <div class="tour-date">
                        <div>20</div>
                        <div>МАЙ</div>
                    </div>
                    <div class="tour-location">
                        <strong>БАРСЕЛОНА, ИСПАНИЯ</strong>
                        <span>Razzmatazz</span>
                    </div>
                    <div class="tour-ticket">
                        <a href="https://besteventseurope.com/event/barcelona_oxxxy?id_ses=261" class="btn btn-tour oswald" target="_blank">БИЛЕТЫ</a> <!-- Замените 'http://localhost:8084/ticket-link' на нужную вам ссылку -->
                    </div>
                </div>
            </div>
        </div>

        <!-- Карта тура 2 -->
        <div class="col-md-12">
            <div class="card">
                <div class="card-info">
                    <div class="tour-date">
                        <div>15</div>
                        <div>АПР</div>
                    </div>
                    <div class="tour-location">
                        <strong>Вена, Австрия</strong>
                        <span>Raiffeisen Halle im Gasometer</span>
                    </div>
                    <div class="tour-ticket">
                        <a href="https://besteventseurope.com/event/vienna_oxxxy?id_ses=271" class="btn btn-tour oswald" target="_blank">БИЛЕТЫ</a> <!-- Замените 'http://localhost:8084/ticket-link' на нужную вам ссылку -->
                    </div>
                </div>
            </div>
        </div>

        <!-- Карта тура 3 -->
        <div class="col-md-12">
            <div class="card">
                <div class="card-info">
                    <div class="tour-date">
                        <div>20</div>
                        <div>МАЙ</div>
                    </div>
                    <div class="tour-location">
                        <strong>Цюрих, Швейцария</strong>
                        <span>Komplex 457</span>
                    </div>
                    <div class="tour-ticket">
                        <a href="https://concert-ticket.ch/event/Zurich_oxxxy?id_ses=125" class="btn btn-tour oswald" target="_blank">БИЛЕТЫ</a> <!-- Замените 'http://localhost:8084/ticket-link' на нужную вам ссылку -->
                    </div>
                </div>
            </div>
        </div>

        <div class="col-md-12">
            <div class="card">
                <div class="card-info">
                    <div class="tour-date">
                        <div>27</div>
                        <div>МАР</div>
                    </div>
                    <div class="tour-location">
                        <strong>Варшава, Польша</strong>
                        <span>Progresja</span>
                    </div>
                    <div class="tour-ticket">
                        <a href="https://besteventseurope.com/event/Warsaw_oxxxy?id_ses=263" class="btn btn-tour oswald" target="_blank">БИЛЕТЫ</a> <!-- Замените 'http://localhost:8084/ticket-link' на нужную вам ссылку -->
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-12">
            <div class="card">
                <div class="card-info">
                    <div class="tour-date">
                        <div>30</div>
                        <div>МАР</div>
                    </div>
                    <div class="tour-location">
                        <strong>Вильнюс, Литва</strong>
                        <span>LITEXPO</span>
                    </div>
                    <div class="tour-ticket">
                        <a href="https://ticket.somewhere.show/flutter_widget/web/?id=100077&cityId=365&frontendId=2320&token=505ca15fd59297547e1a&success=https://somewhere.show/success&fail=https://somewhere.show/failed&zone=real&lng=en&available=off&hint=on&date=on&promo=on" class="btn btn-tour oswald" target="_blank">БИЛЕТЫ</a> <!-- Замените 'http://localhost:8084/ticket-link' на нужную вам ссылку -->
                    </div>
                </div>
            </div>
        </div>

            <div class="col-md-12">
                <div class="card">
                    <div class="card-info">
                        <div class="tour-date">
                            <div>01</div>
                            <div>АПР</div>
                        </div>
                        <div class="tour-location">
                            <strong>Прага, Чехия</strong>
                            <span>FÓRUM KARLÍN</span>
                        </div>
                        <div class="tour-ticket">
                            <a href="https://www.ticketmaster.cz/artist/oxxxymiron-vstupenky/1147323" class="btn btn-tour oswald" target="_blank">БИЛЕТЫ</a> <!-- Замените 'http://localhost:8084/ticket-link' на нужную вам ссылку -->
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-12">
                <div class="card">
                    <div class="card-info">
                        <div class="tour-date">
                            <div>5</div>
                            <div>АПР</div>
                        </div>
                        <div class="tour-location">
                            <strong>Рига, Латвия</strong>
                            <span>Arēna Rīga</span>
                        </div>
                        <div class="tour-ticket">
                            <a href="https://ticket.somewhere.show/widget/#/?zone=real&frontendId=2320&token=505ca15fd59297547e1a&id=99436&cityId=291&lng=en&agr=https:%2F%2Fsomewhere.show%2Fterms&success=https:%2F%2Fsomewhere.show%2Fsuccess&fail=https:%2F%2Fsomewhere.show%2Ffailed" class="btn btn-tour oswald" target="_blank">БИЛЕТЫ</a> <!-- Замените 'http://localhost:8084/ticket-link' на нужную вам ссылку -->
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-12">
                <div class="card">
                    <div class="card-info">
                        <div class="tour-date">
                            <div>17</div>
                            <div>АПР</div>
                        </div>
                        <div class="tour-location">
                            <strong>Лондон, Великобритания</strong>
                            <span>Electric Ballroom</span>
                        </div>
                        <div class="tour-ticket">
                            <a href="https://besteventseurope.com/event/London_oxxxy?id_ses=267" class="btn btn-tour oswald" target="_blank">БИЛЕТЫ</a> <!-- Замените 'http://localhost:8084/ticket-link' на нужную вам ссылку -->
                        </div>
                    </div>
                </div>
            </div>



        </div>
    </div>
<div class="black-background">
    <!-- Контент с черным фоном -->
    <p style="color: white;"></p>
</div>
</div>


<footer>
    <a href="https://t.me/norimyxxxo" target="_blank">
        <i class="fab fa-telegram fa-2x"></i>
    </a>
    <a href="https://music.yandex.ru/artist/249991" target="_blank">
        <i class="fas fa-music fa-2x"></i>
    </a>
</footer>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script>
    document.addEventListener('DOMContentLoaded', () => {
        // Улучшенное бургер-меню
        const burger = document.querySelector('.burger');
        const menuList = document.querySelector('.menu-list');

        burger.addEventListener('click', () => {
            burger.classList.toggle('active');
            menuList.classList.toggle('active'); // Показываем/скрываем меню
        });
    });
</script>
</body>
</html>
