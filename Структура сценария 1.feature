﻿#language: ru

@tree
@exportscenarios
@ТипШага: МоиСценарии.Справочники
@Описание: Проверка создания нескольких новых элементов справочника Номенклатура
@ПримерИспользования: И я создаю новые элементы справочника Номенклатура

Функционал: создание новой номенклатуры в справочнике

Как Пользователь я хочу
создать новые позиции номенклатуры в справочнике Номенклатура 
чтобы добавлять их в различные документы   

Структура сценария: я создаю новые элементы справочника Номенклатура
    * И я открываю справочник Номенклатура
        И В командном интерфейсе я выбираю 'Покупки и продажи' 'Номенклатура'
        Тогда открылось окно 'Номенклатура'
    * И я нажимаю на кнопку Создать
        И я нажимаю на кнопку с именем 'ФормаСоздать'
        Тогда открылось окно 'Номенклатура (создание)'
    * И в поле Наименование я ввожу наименование нового элемента
        И в поле с именем 'Наименование' я ввожу текст <ПараметрНаименованиеНоменклатуры>
    * И я заполняю обязательные реквизиты 
        И я нажимаю на кнопку создать поля с именем "Родитель"
        Тогда открылось окно 'Номенклатура (создание группы)'
        И в поле с именем 'Наименование' я ввожу текст <ПараметрНаименованиеГруппы>
        И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
        И я жду закрытия окна 'Номенклатура (создание группы) *' в течение 5 секунд
        Тогда открылось окно 'Номенклатура (создание) *'
        И я нажимаю на кнопку создать поля с именем "НоменклатурнаяГруппа"
        Тогда открылось окно 'Номенклатурная группа (создание)'
        И в поле с именем 'Наименование' я ввожу текст <ПараметрНаименованиеНоменклатурнойГруппы>
        И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
        И я жду закрытия окна 'Номенклатурная группа (создание) *' в течение 5 секунд
        Тогда открылось окно 'Номенклатура (создание) *'
        И я нажимаю на кнопку создать поля с именем "ЕдиницаИзмерения"
        Тогда открылось окно 'Единица измерения (создание)'
        И в поле с именем 'Наименование' я ввожу текст <ПараметрНаименованиеЕдиницыИзмерения>
        И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
        И я жду закрытия окна 'Единица измерения (создание) *' в течение 5 секунд
        Тогда открылось окно 'Номенклатура (создание) *'
        И из выпадающего списка с именем "ВидНоменклатуры" я выбираю точное значение <ПараметрТоварИлиУслуга>
    * И я нажимаю на кнопку ЗаписатьИЗакрыть
        И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
        И я жду закрытия окна 'Номенклатура (создание) *' в течение 5 секунд
    * Тогда в списке появляется созданный элемент
	    Тогда я жду, что таблица "Список" станет содержать строки в течение 5 секунд:
   	    	| 'Наименование'              		  | 'Номенклатурная группа'							| 'Единица измерения'						  | 'Вид номенклатуры' 			|
	    	| <ПараметрНаименованиеНоменклатуры>  | <ПараметрНаименованиеНоменклатурнойГруппы>  	| <ПараметрНаименованиеЕдиницыИзмерения>  	  | <ПараметрТоварИлиУслуга>    |

Примеры:
	| "ПараметрНаименованиеНоменклатуры"  | "ПараметрНаименованиеГруппы" | "ПараметрНаименованиеНоменклатурнойГруппы" | "ПараметрНаименованиеЕдиницыИзмерения" | "ПараметрТоварИлиУслуга" |
	| "Гортензия"                         | "Горшочные растения"         | "Горшочные растения"                       | "Штука"                                | "Товар"                  |
	| "Грунт для комнатных растений 7 кг" | "Грунт для растений"         | "Грунт для растений"                       | "Мешок"                                | "Товар"                  |
	| "Доставка9"                         | "Доставка"                   | "Доставка"                                 | "Услуга"                               | "Услуга"                 |