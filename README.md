# Универсальные функции для работы с цветом в 1С:Предприятие 8

![Логотип](https://softonit.ru/upload/iblock/511/parrot_1417286_640.png "Работа с цветом в 1С")

Как выглядит обработка
![Скриншот](https://softonit.ru/upload/iblock/169/2020_08_06_19_27_10.png "Работа с цветом в 1С")

## Возможности

* HEX-представлением цвета (тип Строка, вида #RRGGBB)
* HSV-представлением цвета (тип Cтруктура * h - Число от 0 до 360 - Hue. * s - Число от 0 до 100 - Saturation. * v - Число от 0 до 100 - Value/Brightness)
* HSL-представлением цвета (тип Cтруктура * h - Число от 0 до 360 - Hue. * s - Число от 0 до 100 - Saturation. * l - Число от 0 до 100 - lightness)
* CMYK-представлением цвета (тип Cтруктура * c - Число от 0 до 100 - Cyan, * m - Число от 0 до 100 - Magenta. * y - Число от 0 до 100 - Yellow. * k - Число от 0 до 100 - Key или Black)
* Конвертациями из одной системы представления цвета в другую (WebЦвет-Цвет, WindowsЦвет-Цвет, ЭлементСтиля-Цвет, CMYK-Цвет, HSV-Цвет, HSL-Цвет, HEX-Цвет и обратно)
* Работа с каталогами RAL (RAL Standart, RAL Design)
* Получение цветов по Web-цвету, WindowsЦвету, ЭлементуСтиля
* Работа со случайными цветами;
  * Получение случайного цвета;
  * Получение случайного светлого цвета;
  * Получение случайного темного цвета;
  * Получение случайного цвета из каталога RAL Standart;
  * Получение случайного Web-цвета;
* Получение контрастных и инвертированных цветов для текста и фона;
* Извлечение компонент цвета (красный, зеленый, синий).
* Трансформация цветов:
  * осветление;
  * затемнение;
  * различные алгоритмы градации серого;
* смешивание двух цветов;
* Работа с именованными CSS-цветами (black, green, white...)

**Все функции для работы с цветом находятся в модуле объекта обработки color1c.epf и в файле Module.os**

Автор: Барилко Виталий.

Страница публикации: https://softonit.ru/free/unicolor1c/
