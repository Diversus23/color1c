
#Область ОбработчикиСобытийФормы

&НаСервере
Процедура ПриСозданииНаСервере(Отказ, СтандартнаяОбработка)
	
	СтрокаРаскраски = "Иванов Иван";
	
	ОбработкаЦветаНаСервере(0);
	
	Баланс = 50;
	Цвет1 = ОбработкаОбъект().СлучайныйТемныйЦвет();
	Цвет2 = ОбработкаОбъект().СлучайныйСветлыйЦвет();
	ОбработкаЦветаНаСервере(7);
	
	КоличествоГрадаций = 5;
	ЦветНачалоГрадиента = ОбработкаОбъект().СлучайныйСветлыйЦвет();
	ЦветКонецГрадиента = ОбработкаОбъект().СлучайныйТемныйЦвет();
	ОбработкаЦветаНаСервере(9);
			
	Соответствие = ОбработкаОбъект().КаталогWebЦветов();
	Для Каждого КЗ Из Соответствие Цикл
		НоваяСтрока = ТаблицаWebЦвета.Добавить();
		НоваяСтрока.Название = КЗ.Ключ;
		НоваяСтрока.Цвет = КЗ.Значение;
	КонецЦикла;
	ТаблицаWebЦвета.Сортировать("Название");
	
	Соответствие = ОбработкаОбъект().КаталогCSSЦветов();
	Для Каждого КЗ Из Соответствие Цикл
		НоваяСтрока = ТаблицаCSS.Добавить();
		НоваяСтрока.Название = КЗ.Ключ;
		НоваяСтрока.Цвет = КЗ.Значение;
	КонецЦикла;
	ТаблицаCSS.Сортировать("Название");
	
	Соответствие = ОбработкаОбъект().КаталогRALStandart();
	Для Каждого КЗ Из Соответствие Цикл
		НоваяСтрока = ТаблицаRALStandart.Добавить();
		НоваяСтрока.Название = КЗ.Ключ;
		НоваяСтрока.Цвет = КЗ.Значение;
	КонецЦикла;
	ТаблицаRALStandart.Сортировать("Название");
	
	Соответствие = ОбработкаОбъект().КаталогПастельныхТонов();
	Для Каждого КЗ Из Соответствие Цикл
		НоваяСтрока = ТаблицаПастельныеЦвета.Добавить();
		НоваяСтрока.Название = КЗ.Ключ;
		НоваяСтрока.Цвет = КЗ.Значение;
	КонецЦикла;
	ТаблицаПастельныеЦвета.Сортировать("Название");
	
	Соответствие = ОбработкаОбъект().КаталогПастельныхТоновЦветовойКруг();
	Для Каждого КЗ Из Соответствие Цикл
		НоваяСтрока = ТаблицаПастельныхТоновКруг.Добавить();
		НоваяСтрока.Название = КЗ.Ключ;
		НоваяСтрока.Цвет = КЗ.Значение;
	КонецЦикла;
	ТаблицаПастельныхТоновКруг.Сортировать("Название");		
	
	Соответствие = ОбработкаОбъект().КаталогStripe();
	Для Каждого КЗ Из Соответствие Цикл
		НоваяСтрока = ТаблицаStripe.Добавить();
		НоваяСтрока.Название = КЗ.Ключ;
		НоваяСтрока.Цвет = КЗ.Значение;
	КонецЦикла;
	ТаблицаStripe.Сортировать("Название");
		
	Массив = ОбработкаОбъект().МассивБезопасныхWebЦветов();
	Для Каждого Элемент Из Массив Цикл
		НоваяСтрока = ТаблицаБезопасныеWebЦвета.Добавить();
		НоваяСтрока.Цвет = Элемент;
	КонецЦикла;
		
КонецПроцедуры

#КонецОбласти

#Область ОбработчикиСобытийЭлементовШапкиФормы

&НаКлиенте
Процедура ЦветПриИзменении(Элемент)
	
	КонвертироватьНаСервере();
	ОбновитьПример();
	
КонецПроцедуры

&НаКлиенте
Процедура Цвет1ПриИзменении(Элемент)
	
	ОбработкаЦветаНаСервере(7);
	
КонецПроцедуры

&НаКлиенте
Процедура Цвет2ПриИзменении(Элемент)
	
	ОбработкаЦветаНаСервере(7);
	
КонецПроцедуры

&НаКлиенте
Процедура БалансПриИзменении(Элемент)
	
	ОбработкаЦветаНаСервере(7);
	
КонецПроцедуры

&НаКлиенте
Процедура КоличествоГрадацийПриИзменении(Элемент)
	
	ОбработкаЦветаНаСервере(9);
	
КонецПроцедуры

&НаКлиенте
Процедура СтраницыПриСменеСтраницы(Элемент, ТекущаяСтраница)
	
	Если Элементы.Страницы.ТекущаяСтраница = Элементы.Конвертация
		ИЛИ Элементы.Страницы.ТекущаяСтраница = Элементы.СмешиваниеЦветов Тогда
		ПодключитьОбработчикОжидания("ОбновитьПримерНаКлиенте", 0.1, Истина);
	КонецЕсли;
	
КонецПроцедуры

&НаКлиенте
Процедура ЦветНачалоГрадиентаПриИзменении(Элемент)
	
	ОбработкаЦветаНаСервере(9);
	
КонецПроцедуры

&НаКлиенте
Процедура ЦветКонецГрадиентаПриИзменении(Элемент)
	
	ОбработкаЦветаНаСервере(9);
	
КонецПроцедуры

&НаКлиенте
Процедура ГруппаВариантыПриСменеСтраницы(Элемент, ТекущаяСтраница)
	
	ОбработкаЦветаНаСервере(9);
	
КонецПроцедуры

&НаКлиенте
Процедура СтрокаРаскраскиПриИзменении(Элемент)
	
	ПодключитьОбработчикОжидания("ОбновитьПримерНаКлиенте", 0.1, Истина);
	
КонецПроцедуры

&НаКлиенте
Процедура КаталогиЦветовПриСменеСтраницы(Элемент, ТекущаяСтраница)
	
	ПодключитьОбработчикОжидания("ОбновитьПримерНаКлиенте", 0.1, Истина);
	
КонецПроцедуры

#КонецОбласти

#Область ОбработчикиСобытийЭлементовТаблицыФормыТаблицаПастельныхТоновКруг

&НаКлиенте
Процедура ТаблицаПастельныхТоновКругПриАктивизацииСтроки(Элемент)

	Если Элементы.ТаблицаПастельныхТоновКруг.ТекущиеДанные <> Неопределено Тогда
		ТекущийЦветПастельныеЦветаКруг = Элементы.ТаблицаПастельныхТоновКруг.ТекущиеДанные.Цвет;
	КонецЕсли;	
	ПодключитьОбработчикОжидания("ОбновитьПримерНаКлиенте", 0.1, Истина);

КонецПроцедуры

#КонецОбласти

#Область ОбработчикиСобытийЭлементовТаблицыФормыТаблицаStripe

&НаКлиенте
Процедура ТаблицаStripeПриАктивизацииСтроки(Элемент)

	Если Элементы.ТаблицаStripe.ТекущиеДанные <> Неопределено Тогда
		ТекущийЦветStripe = Элементы.ТаблицаStripe.ТекущиеДанные.Цвет;
	КонецЕсли;	
	ПодключитьОбработчикОжидания("ОбновитьПримерНаКлиенте", 0.1, Истина);

КонецПроцедуры

#КонецОбласти

#Область ОбработчикиСобытийЭлементовТаблицыФормыТаблицаRALStandart

&НаКлиенте
Процедура ТаблицаRALStandartПриАктивизацииСтроки(Элемент)
	
	Если Элементы.ТаблицаRALStandart.ТекущиеДанные <> Неопределено Тогда
		ТекущийЦветRALStandart = Элементы.ТаблицаRALStandart.ТекущиеДанные.Цвет;
	КонецЕсли;	
	ПодключитьОбработчикОжидания("ОбновитьПримерНаКлиенте", 0.1, Истина);
	
КонецПроцедуры

#КонецОбласти

#Область ОбработчикиСобытийЭлементовТаблицыФормыТаблицаCSS

&НаКлиенте
Процедура ТаблицаCSSПриАктивизацииСтроки(Элемент)
	
	Если Элементы.ТаблицаCSS.ТекущиеДанные <> Неопределено Тогда
		ТекущийЦветCSS = Элементы.ТаблицаCSS.ТекущиеДанные.Цвет;
	КонецЕсли;	
	ПодключитьОбработчикОжидания("ОбновитьПримерНаКлиенте", 0.1, Истина);
	
КонецПроцедуры

#КонецОбласти

#Область ОбработчикиСобытийЭлементовТаблицыФормыТаблицаWebЦвета

&НаКлиенте
Процедура ТаблицаWebЦветаПриАктивизацииСтроки(Элемент)
	
	Если Элементы.ТаблицаWebЦвета.ТекущиеДанные <> Неопределено Тогда
		ТекущийWebЦвет = Элементы.ТаблицаWebЦвета.ТекущиеДанные.Цвет;
	КонецЕсли;	
	ПодключитьОбработчикОжидания("ОбновитьПримерНаКлиенте", 0.1, Истина);
	
КонецПроцедуры

#КонецОбласти

#Область ОбработчикиСобытийЭлементовТаблицыФормыТаблицаПастельныеЦвета

&НаКлиенте
Процедура ТаблицаПастельныеЦветаПриАктивизацииСтроки(Элемент)
		Если Элементы.ТаблицаПастельныеЦвета.ТекущиеДанные <> Неопределено Тогда
		ТекущийЦветПастельныеЦвета = Элементы.ТаблицаПастельныеЦвета.ТекущиеДанные.Цвет;
	КонецЕсли;
	ПодключитьОбработчикОжидания("ОбновитьПримерНаКлиенте", 0.1, Истина);

КонецПроцедуры

#КонецОбласти

#Область ОбработчикиСобытийЭлементовТаблицыФормыТаблицаГрадиент

&НаКлиенте
Процедура ТаблицаГрадиентПриАктивизацииСтроки(Элемент)
	
	Если Элементы.ТаблицаГрадиент.ТекущиеДанные <> Неопределено Тогда
		ТекущийЦвет = Элементы.ТаблицаГрадиент.ТекущиеДанные.Цвет;
	КонецЕсли;
	ПодключитьОбработчикОжидания("ОбновитьПримерНаКлиенте", 0.1, Истина);
	
КонецПроцедуры

#КонецОбласти

#Область ОбработчикиСобытийЭлементовТаблицыФормыТаблицаГрадиентПриятныйГлазу

&НаКлиенте
Процедура ТаблицаГрадиентПриятныйГлазуПриАктивизацииСтроки(Элемент)
	
	Если Элементы.ТаблицаГрадиентПриятныйГлазу.ТекущиеДанные <> Неопределено Тогда
		ТекущийЦвет = Элементы.ТаблицаГрадиентПриятныйГлазу.ТекущиеДанные.Цвет;
	КонецЕсли;
	ПодключитьОбработчикОжидания("ОбновитьПримерНаКлиенте", 0.1, Истина);

КонецПроцедуры

#КонецОбласти

#Область ОбработчикиСобытийЭлементовТаблицыФормыТаблицаБезопасныеWebЦвета

&НаКлиенте
Процедура ТаблицаБезопасныеWebЦветаПриАктивизацииСтроки(Элемент)
	
	Если Элементы.ТаблицаБезопасныеWebЦвета.ТекущиеДанные <> Неопределено Тогда
		ТекущийЦветБезопасный = Элементы.ТаблицаБезопасныеWebЦвета.ТекущиеДанные.Цвет;
	КонецЕсли;
	ПодключитьОбработчикОжидания("ОбновитьПримерНаКлиенте", 0.1, Истина);
	
КонецПроцедуры

#КонецОбласти

#Область ОбработчикиКомандФормы

&НаКлиенте
Процедура БлижайшийЦветИзПалитрыПастельныхЦветов(Команда)
	
	БлижайшийЦветИзПалитры(ТаблицаПастельныеЦвета);
	
КонецПроцедуры

&НаКлиенте
Процедура БлижайшийЦветИзПалитрыCSS(Команда)
	
	БлижайшийЦветИзПалитры(ТаблицаCSS);
	
КонецПроцедуры

&НаКлиенте
Процедура БлижайшийЦветИзПалитрыWebЦвета(Команда)

	БлижайшийЦветИзПалитры(ТаблицаWebЦвета);	

КонецПроцедуры

&НаКлиенте
Процедура Конвертировать(Команда)
	
	КонвертироватьНаСервере();
	
КонецПроцедуры

&НаКлиенте
Процедура СгенерироватьСлучайныйЦвет(Команда)
	
	ОбработкаЦветаНаСервере(0);
	
КонецПроцедуры

&НаКлиенте
Процедура СгенерироватьСлучайныйСветлыйЦвет(Команда)
	
	ОбработкаЦветаНаСервере(1);
	
КонецПроцедуры

&НаКлиенте
Процедура СгенерироватьСлучайныйТемныйЦвет(Команда)
	
	ОбработкаЦветаНаСервере(2);
	
КонецПроцедуры

&НаКлиенте
Процедура СлучайныйWebЦвет(Команда)
	
	ОбработкаЦветаНаСервере(4);
	
КонецПроцедуры

&НаКлиенте
Процедура СгенерироватьСлучайныйЦветКаталогаRAL(Команда)
	
	ОбработкаЦветаНаСервере(3);
	
КонецПроцедуры

&НаКлиенте
Процедура ЦветСтиля(Команда)
	
	ОбработкаЦветаНаСервере(10);
	
КонецПроцедуры

&НаКлиенте
Процедура ГрадацияСерого(Команда)
	
	ОбработкаЦветаНаСервере(8);
	
КонецПроцедуры

&НаКлиенте
Процедура ЗатемнитьЦветНа10Процентов(Команда)
	
	ОбработкаЦветаНаСервере(6);
	
КонецПроцедуры

&НаКлиенте
Процедура Смешать(Команда)
	
	ОбработкаЦветаНаСервере(7);
	
КонецПроцедуры

&НаКлиенте
Процедура Осветлить(Команда)
	
	ОбработкаЦветаНаСервере(5);
	
КонецПроцедуры

&НаКлиенте
Процедура СлучайныйПастельныйЦвет(Команда)
	
	ОбработкаЦветаНаСервере(11);
	
КонецПроцедуры

#КонецОбласти

#Область СлужебныеПроцедурыИФункции

&НаСервере
Процедура ОбновитьПример()
	
	Если Элементы.Страницы.ТекущаяСтраница = Элементы.Конвертация Тогда
		Элементы.Пример.ЦветФона = Цвет;
		Элементы.Пример.ЦветТекста = ОбработкаОбъект().КонтрастныйЦвет(Цвет);	
	ИначеЕсли Элементы.Страницы.ТекущаяСтраница = Элементы.СмешиваниеЦветов Тогда
		Элементы.Пример.ЦветФона = ЦветРезультат;
		Элементы.Пример.ЦветТекста = ОбработкаОбъект().КонтрастныйЦвет(ЦветРезультат);
	ИначеЕсли Элементы.Страницы.ТекущаяСтраница = Элементы.Градиенты Тогда
		Элементы.Пример.ЦветФона = ТекущийЦвет;		
		Элементы.Пример.ЦветТекста = ОбработкаОбъект().КонтрастныйЦвет(ТекущийЦвет);
	ИначеЕсли Элементы.Страницы.ТекущаяСтраница = Элементы.Каталоги Тогда
		Если Элементы.КаталогиЦветов.ТекущаяСтраница = Элементы.КаталогWebЦветов Тогда
			Элементы.Пример.ЦветФона = ТекущийWebЦвет;
			Элементы.Пример.ЦветТекста = ОбработкаОбъект().КонтрастныйЦвет(ТекущийWebЦвет);
			КаталогЦвета = ОбработкаОбъект().КаталогWebЦветов();
		ИначеЕсли Элементы.КаталогиЦветов.ТекущаяСтраница = Элементы.RALStandart Тогда
			Элементы.Пример.ЦветФона = ТекущийЦветRALStandart;
			Элементы.Пример.ЦветТекста = ОбработкаОбъект().КонтрастныйЦвет(ТекущийЦветRALStandart);
			КаталогЦвета = ОбработкаОбъект().КаталогRALStandart();
		ИначеЕсли Элементы.КаталогиЦветов.ТекущаяСтраница = Элементы.CSS Тогда
			Элементы.Пример.ЦветФона = ТекущийЦветCSS;
			Элементы.Пример.ЦветТекста = ОбработкаОбъект().КонтрастныйЦвет(ТекущийЦветCSS);
			КаталогЦвета = ОбработкаОбъект().КаталогCSSЦветов();
		ИначеЕсли Элементы.КаталогиЦветов.ТекущаяСтраница = Элементы.БезопасныеWebЦвета Тогда
			Элементы.Пример.ЦветФона = ТекущийЦветБезопасный;
			Элементы.Пример.ЦветТекста = ОбработкаОбъект().КонтрастныйЦвет(ТекущийЦветБезопасный);
			КаталогЦвета = ОбработкаОбъект().МассивБезопасныхWebЦветов();
		ИначеЕсли Элементы.КаталогиЦветов.ТекущаяСтраница = Элементы.КаталогПастельныеЦвета Тогда
			Элементы.Пример.ЦветФона = ТекущийЦветПастельныеЦвета;
			Элементы.Пример.ЦветТекста = ОбработкаОбъект().КонтрастныйЦвет(ТекущийЦветПастельныеЦвета);
			КаталогЦвета = ОбработкаОбъект().КаталогПастельныхТонов();			
		ИначеЕсли Элементы.КаталогиЦветов.ТекущаяСтраница = Элементы.КаталогПастельныхЦветовКруг Тогда
			Элементы.Пример.ЦветФона = ТекущийЦветПастельныеЦветаКруг;
			Элементы.Пример.ЦветТекста = ОбработкаОбъект().КонтрастныйЦвет(ТекущийЦветПастельныеЦветаКруг);
			КаталогЦвета = ОбработкаОбъект().КаталогПастельныхТоновЦветовойКруг();
		ИначеЕсли Элементы.КаталогиЦветов.ТекущаяСтраница = Элементы.КаталогStripe Тогда
			Элементы.Пример.ЦветФона = ТекущийЦветStripe;
			Элементы.Пример.ЦветТекста = ОбработкаОбъект().КонтрастныйЦвет(ТекущийЦветStripe);
			КаталогЦвета = ОбработкаОбъект().КаталогStripe(); 			
		КонецЕсли;
		
		ЦветИзПалитры = ОбработкаОбъект().HexИзКаталогаПоСтроке(СтрокаРаскраски, КаталогЦвета);
		Элементы.ЦветИзПалитры.ЦветФона = ОбработкаОбъект().HexВЦвет(ЦветИзПалитры);
		Элементы.ЦветИзПалитры.ЦветТекста = ОбработкаОбъект().КонтрастныйЦвет(Элементы.ЦветИзПалитры.ЦветФона);
	КонецЕсли;
	
	Элементы.ПримерИнвертированный.ЦветФона = Элементы.Пример.ЦветТекста;
	Элементы.ПримерИнвертированный.ЦветТекста = Элементы.Пример.ЦветФона;
		
	КоэффициентКонтраста = ОбработкаОбъект().КоэффициентКонтраста(Элементы.Пример.ЦветТекста, Элементы.Пример.ЦветФона);
	ОценкаКонтраста = ОбработкаОбъект().ОценкаКонтраста(Элементы.Пример.ЦветТекста, Элементы.Пример.ЦветФона);
	Если ОценкаКонтраста = "fail" Тогда
		Элементы.ОценкаКонтраста.ЦветФона = ОбработкаОбъект().HexВЦвет("#F9EBEA");
		Элементы.ОценкаКонтраста.ЦветТекста = ОбработкаОбъект().HexВЦвет("#C0392B");
	ИначеЕсли ОценкаКонтраста = "ok" Тогда
		Элементы.ОценкаКонтраста.ЦветФона = ОбработкаОбъект().HexВЦвет("#FCF3CF");
		Элементы.ОценкаКонтраста.ЦветТекста = ОбработкаОбъект().HexВЦвет("#D9B039");
	ИначеЕсли ОценкаКонтраста = "good" Тогда
		Элементы.ОценкаКонтраста.ЦветФона = ОбработкаОбъект().HexВЦвет("#EBF5FB");
		Элементы.ОценкаКонтраста.ЦветТекста = ОбработкаОбъект().HexВЦвет("#246A99");
	Иначе
		Элементы.ОценкаКонтраста.ЦветФона = ОбработкаОбъект().HexВЦвет("#D4EFDF");
		Элементы.ОценкаКонтраста.ЦветТекста = ОбработкаОбъект().HexВЦвет("#27AE64");
	КонецЕсли;
	
	Проверка = ОбработкаОбъект().ПроверкаКонтраста(Элементы.Пример.ЦветТекста, Элементы.Пример.ЦветФона);
	
	ОценкаAAALargeText = Проверка.AAA.LargeText;
	Элементы.ОценкаAAALargeText.ЦветТекста = 
		?(Проверка.AAA.LargeText = "fail", ОбработкаОбъект().HexВЦвет("#C0392B"), ОбработкаОбъект().HexВЦвет("#27AE64"));
	ОценкаAAASmallText = Проверка.AAA.SmallText;
	Элементы.ОценкаAAASmallText.ЦветТекста = 
		?(Проверка.AAA.SmallText = "fail", ОбработкаОбъект().HexВЦвет("#C0392B"), ОбработкаОбъект().HexВЦвет("#27AE64"));
	ОценкаAAAUI = Проверка.AAA.UI;	
	Элементы.ОценкаAAAUI.ЦветТекста = 
		?(Проверка.AAA.UI = "fail", ОбработкаОбъект().HexВЦвет("#C0392B"), ОбработкаОбъект().HexВЦвет("#27AE64"));
		
	ОценкаAALargeText = Проверка.AA.LargeText;
	Элементы.ОценкаAALargeText.ЦветТекста = 
		?(Проверка.AA.LargeText = "fail", ОбработкаОбъект().HexВЦвет("#C0392B"), ОбработкаОбъект().HexВЦвет("#27AE64"));
	ОценкаAASmallText = Проверка.AA.SmallText;	
	Элементы.ОценкаAASmallText.ЦветТекста = 
		?(Проверка.AA.SmallText = "fail", ОбработкаОбъект().HexВЦвет("#C0392B"), ОбработкаОбъект().HexВЦвет("#27AE64"));
	ОценкаAAUI = Проверка.AA.UI;
	Элементы.ОценкаAAUI.ЦветТекста = 
		?(Проверка.AA.UI = "fail", ОбработкаОбъект().HexВЦвет("#C0392B"), ОбработкаОбъект().HexВЦвет("#27AE64"));
	
КонецПроцедуры

&НаКлиенте
Процедура ОбновитьПримерНаКлиенте()
	
	ОбновитьПример();
	
КонецПроцедуры

&НаСервере
Функция ОбработкаОбъект()
	
	Возврат РеквизитФормыВЗначение("Объект");
	
КонецФункции

&НаСервере
Процедура КонвертироватьНаСервере()
	
	ЦветHex = ОбработкаОбъект().ЦветВHex(Цвет);
	
	Структура = ОбработкаОбъект().ЦветВCMYK(Цвет);
	ЦветCMYK = СтрШаблон(НСтр("ru = 'с = %1, m = %2, y = %3, k = %4'"), 
		Структура.c, Структура.m, Структура.y, Структура.k);
		
	Структура = ОбработкаОбъект().ЦветВHSV(Цвет);
	ЦветHSV = СтрШаблон(НСтр("ru = 'h = %1, s = %2, v = %3'"), 
		Структура.h, Структура.s, Структура.v);
		
	Структура = ОбработкаОбъект().ЦветВHSL(Цвет);
	ЦветHSL = СтрШаблон(НСтр("ru = 'h = %1, s = %2, l = %3'"), 
		Структура.h, Структура.s, Структура.l);
	
	Структура = ОбработкаОбъект().ЦветВXYZ(Цвет);
	ЦветXYZ = СтрШаблон(НСтр("ru = 'x = %1, y = %2, z = %3'"), 
		Структура.x, Структура.y, Структура.z);

	Структура = ОбработкаОбъект().ЦветВLab(Цвет);
	ЦветLab = СтрШаблон(НСтр("ru = 'l = %1, a = %2, b = %3'"), 
		Структура.l, Структура.a, Структура.b);

	Структура = ОбработкаОбъект().ЦветВLCH(Цвет);
	ЦветLch = СтрШаблон(НСтр("ru = 'l = %1, c = %2, h = %3'"), 
		Структура.l, Структура.c, Структура.h);
	
	ЦветАбс = ОбработкаОбъект().АбсолютныйЦвет(Цвет);
	ЦветRGB = СтрШаблон(НСтр("ru = 'r = %1, g = %2, b = %3'"), 
		ЦветАбс.Красный, ЦветАбс.Зеленый, ЦветАбс.Синий);
	
КонецПроцедуры
	
&НаСервере
Процедура ОбработкаЦветаНаСервере(Знач Метод = 0)
	
	Если Метод = 0 Тогда
		Цвет = ОбработкаОбъект().СлучайныйЦвет();
	ИначеЕсли Метод = 1 Тогда
		Цвет = ОбработкаОбъект().СлучайныйСветлыйЦвет();
	ИначеЕсли Метод = 2 Тогда
		Цвет = ОбработкаОбъект().СлучайныйТемныйЦвет();
	ИначеЕсли Метод = 3 Тогда
		Цвет = ОбработкаОбъект().СлучайныйЦветRALStandart();
	ИначеЕсли Метод = 4 Тогда
		Цвет = ОбработкаОбъект().СлучайныйWebЦвет();
	ИначеЕсли Метод = 5 Тогда
		Цвет = ОбработкаОбъект().ОсветлитьЦвет(Цвет, 10);
	ИначеЕсли Метод = 6 Тогда
		Цвет = ОбработкаОбъект().ЗатемнитьЦвет(Цвет, 10);
	ИначеЕсли Метод = 7 Тогда
		ЦветРезультат = ОбработкаОбъект().СмешатьДваЦвета(Цвет1, Цвет2, Баланс);
	ИначеЕсли Метод = 8 Тогда
		Цвет = ОбработкаОбъект().ГрадацииСерогоAverage(Цвет);
	ИначеЕсли Метод = 9 Тогда
		Если Элементы.ГруппаВарианты.ТекущаяСтраница = Элементы.ГруппаВариантОбычный Тогда
			Массив = ОбработкаОбъект().ПолучитьГрадиент(ЦветНачалоГрадиента, ЦветКонецГрадиента, КоличествоГрадаций);
			ТаблицаВывода = ТаблицаГрадиент;
		Иначе
			Массив = ОбработкаОбъект().ПолучитьГрадиентLCH(ЦветНачалоГрадиента, ЦветКонецГрадиента, КоличествоГрадаций);
			ТаблицаВывода = ТаблицаГрадиентПриятныйГлазу;
		КонецЕсли;
		ТаблицаВывода.Очистить();
		Для Каждого ЦветГрадации Из Массив Цикл
			НоваяСтрока = ТаблицаВывода.Добавить();
			НоваяСтрока.Название = ОбработкаОбъект().ЦветВHex(ЦветГрадации);
			НоваяСтрока.Цвет = ЦветГрадации;
		КонецЦикла;
	ИначеЕсли Метод = 10 Тогда
		Цвет = ОбработкаОбъект().АбсолютныйЦвет(ОбработкаОбъект().ЦветВHex(WindowsЦвета.РабочийСтол));
	ИначеЕсли Метод = 11 Тогда
		Цвет = ОбработкаОбъект().СлучайныйПастельныйЦвет();
	КонецЕсли;
	КонвертироватьНаСервере();
	ОбновитьПример();
	
КонецПроцедуры

&НаСервере
Процедура БлижайшийЦветИзПалитры(Знач ТаблицаПалитры)

	Палитра = ТаблицаПалитры.Выгрузить(, "Цвет").ВыгрузитьКолонку("Цвет");
	НайденныйЦвет = ОбработкаОбъект().БлижайшийЦветИндексПалитры(Цвет, Палитра);
	Если НайденныйЦвет <> Неопределено Тогда
		ЭлементПалиты = ТаблицаПалитры.Получить(НайденныйЦвет); 
		Сообщить(ЭлементПалиты.Название + " " + ОбработкаОбъект().ЦветВHex(ЭлементПалиты.Цвет));
	КонецЕсли;
	
КонецПроцедуры

#КонецОбласти