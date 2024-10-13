// // В этом простом примере мы кэшируем только главную страницу
// const CACHE_NAME = 'v1';
// const urlsToCache = [
//     '/',
//     '/index.html'
// ];
//
// // Устанавливаем service worker
// self.addEventListener('install', event => {
//     event.waitUntil(
//         caches.open(CACHE_NAME)
//             .then(cache => {
//                 console.log('Opened cache');
//                 return cache.addAll(urlsToCache);
//             })
//     );
// });
//
// // Обрабатываем запросы
// self.addEventListener('fetch', event => {
//     event.respondWith(
//         caches.match(event.request)
//             .then(response => {
//                 // Возвращаем ответ из кэша или загружаем из сети
//                 return response || fetch(event.request);
//             })
//     );
// });
