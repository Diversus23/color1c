# Универсальные функции для работы с цветом в 1С:Предприятие 8

[![GitHub release](https://img.shields.io/github/release/Diversus23/color1c.svg)](https://github.com/Diversus23/color1c/releases)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](https://github.com/Diversus23/color1c/blob/master/LICENSE)
[![https://softonit.ru](https://img.shields.io/website-up-down-green-red/http/shields.io.svg)](https://softonit.ru/)
[![OpenYellow](https://img.shields.io/endpoint?url=https://openyellow.neocities.org/badges/1/285622112.json)](https://openyellow.notion.site/openyellow/24727888daa641af95514b46bee4d6f2?p=d3e89453aa1e47eb98f4dc0b09f63fe4&amp;pm=s)

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
* Поиск ближайшего цвета к исходному цвету в переданной палитре цветов. Возможность будет полезна, когда нужно перекодировать один цвет с одной палитры на другую палитру и подоброть похожий цвет в новой палитре.

**Все функции для работы с цветом находятся в модуле объекта обработки color1c.epf и в файле [ObjectModule.bsl](https://github.com/Diversus23/color1c/blob/master/src/ExternalDataProcessors/РаботаСЦветами/ObjectModule.bsl)**

Автор: Барилко Виталий.

Страница публикации: https://softonit.ru/free/unicolor1c/
