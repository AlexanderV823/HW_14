﻿#language: ru

@tree

Функционал: создание нового документа ЗаказПоукупателя с созданием новой номенклатуры

Как Пользователь я хочу
создать новый документ ЗаказПокупателя с созданием новой номенклатуры
чтобы отобразить новый заказ  

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
    И я закрываю все окна клиентского приложения

Сценарий: создание документа ЗаказПокупателя с созданием новой позиции номенклатуры
        * И я открываю список документов Заказы покупателей
	        И В командном интерфейсе я выбираю 'Покупки и продажи' 'Заказы покупателей'
			Тогда открылось окно 'Заказы покупателей'
	    * И я нажимаю на кнопку Создать
		    И я нажимаю на кнопку с именем 'ФормаСоздать'
		    Тогда открылось окно 'Заказ покупателя (создание)'			
		* И я заполняю реквизиты шапки документа
			И я нажимаю на кнопку создать поля с именем "Организация"
			Тогда открылось окно 'Организация (создание)'
			И в поле с именем 'Наименование' я ввожу текст 'ООО \"Организация\"'
			И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
			И я жду закрытия окна 'Организация (создание) *' в течение 5 секунд
			Тогда открылось окно 'Заказ покупателя (создание) *'
			И я нажимаю на кнопку создать поля с именем "Контрагент"
			Тогда открылось окно 'Контрагент (создание)'
			И в поле с именем 'Наименование' я ввожу текст 'ООО \"Роза\"'
			И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
			И я жду закрытия окна 'Контрагент (создание) *' в течение 5 секунд
			Тогда открылось окно 'Заказ покупателя (создание) *'
			И я нажимаю на кнопку создать поля с именем "Договор"
			Тогда открылось окно 'Договор контрагента (создание)'
			И элемент формы с именем 'Владелец' стал равен 'ООО "Роза"'
			И элемент формы с именем 'Организация' стал равен 'ООО "Организация"'
			И в поле с именем 'Наименование' я ввожу текст 'Договор № 1'
			И из выпадающего списка с именем "ВидДоговора" я выбираю точное значение 'Покупатель'
			И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
			И я жду закрытия окна 'Договор контрагента (создание) *' в течение 5 секунд
			Тогда открылось окно 'Заказ покупателя (создание) *'
			И я нажимаю на кнопку создать поля с именем "КонтактноеЛицо"
			Тогда открылось окно 'Контактные лица (создание)'
			И в поле с именем 'Наименование' я ввожу текст 'Игнатова Роза Михайловна'
			И в поле с именем 'КонтактныйТелефон' я ввожу текст '+79991115599'
			И я нажимаю на кнопку создать поля с именем "Должность"
			Тогда открылось окно 'Должности (создание)'
			И в поле с именем 'Наименование' я ввожу текст 'Менеджер по заказам'
			И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
			И я жду закрытия окна 'Должности (создание) *' в течение 5 секунд
			Тогда открылось окно 'Контактные лица (создание) *'
			И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
			И я жду закрытия окна 'Контактные лица (создание) *' в течение 5 секунд
		* И я заполняю табличную часть Товары
			И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
		* И я создаю новую номенклатуру
			И я нажимаю на кнопку создать поля с именем "ТоварыНоменклатура"
			Тогда открылось окно 'Номенклатура (создание)'
			И в поле с именем 'Наименование' я ввожу текст 'Цветок в горшке (Лютик)'
			И я нажимаю на кнопку создать поля с именем "НоменклатурнаяГруппа"
			Тогда открылось окно 'Номенклатурная группа (создание)'
			И в поле с именем 'Наименование' я ввожу текст 'Горшочные растения'
			И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
			И я жду закрытия окна 'Номенклатурная группа (создание) *' в течение 5 секунд
			Тогда открылось окно 'Номенклатура (создание) *'
			И я нажимаю на кнопку создать поля с именем "ЕдиницаИзмерения"
			Тогда открылось окно 'Единица измерения (создание)'
			И в поле с именем 'Наименование' я ввожу текст 'штука'
			И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
			И я жду закрытия окна 'Единица измерения (создание) *' в течение 5 секунд
			Тогда открылось окно 'Номенклатура (создание) *'
			И из выпадающего списка с именем "ВидНоменклатуры" я выбираю точное значение 'Товар'
			И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
			И я жду закрытия окна 'Номенклатура (создание) *' в течение 5 секунд
		* И я продолжаю заполнение табличной части Товары
			И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
			И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '2'
			И в таблице "Товары" я активизирую поле с именем "ТоварыЦена"
			И в таблице "Товары" в поле с именем 'ТоварыЦена' я ввожу текст '100,00'
			И в таблице "Товары" я активизирую поле с именем "ТоварыСкидка"
			И в таблице "Товары" в поле с именем 'ТоварыСкидка' я ввожу текст '5,00'
			И в таблице "Товары" я активизирую поле с именем "ТоварыСумма"
			И в таблице "Товары" я завершаю редактирование строки
        	Тогда в таблице "Товары" у поля с именем "ТоварыСумма" я жду значения "190,00" в течение 5 секунд			
        * И я заполняю вкладку Услуги
	        И я перехожу к закладке с именем "ГруппаУслуги"
	        И в таблице "Услуги" я нажимаю на кнопку с именем 'УслугиДобавить'
	        И я нажимаю на кнопку создать поля с именем "УслугиНоменклатура"
	    * И я создаю новую номенклатуру
			Тогда открылось окно 'Номенклатура (создание)'
	        И в поле с именем 'Наименование' я ввожу текст 'Доставка'
	        И я нажимаю на кнопку создать поля с именем "НоменклатурнаяГруппа"
	        Тогда открылось окно 'Номенклатурная группа (создание)'
	        И в поле с именем 'Наименование' я ввожу текст 'Доставка'
	        И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
	        И я жду закрытия окна 'Номенклатурная группа (создание) *' в течение 5 секунд
	        Тогда открылось окно 'Номенклатура (создание) *'
	        И я нажимаю на кнопку создать поля с именем "ЕдиницаИзмерения"
	        Тогда открылось окно 'Единица измерения (создание)'
	        И в поле с именем 'Наименование' я ввожу текст 'Услуга'
	        И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
	        И я жду закрытия окна 'Единица измерения (создание) *' в течение 5 секунд
	        Тогда открылось окно 'Номенклатура (создание) *'
	        И из выпадающего списка с именем "ВидНоменклатуры" я выбираю точное значение 'Услуга'
	        И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
	        И я жду закрытия окна 'Номенклатура (создание) *' в течение 20 секунд
	    * И я продолжаю заполнение табличной части Услуги
		    И в таблице "Услуги" я активизирую поле с именем "УслугиКоличество"
		    И в таблице "Услуги" в поле с именем 'УслугиКоличество' я ввожу текст '1'
		    И в таблице "Услуги" я активизирую поле с именем "УслугиЦена"
		    И в таблице "Услуги" в поле с именем 'УслугиЦена' я ввожу текст '50,00'
		    И в таблице "Услуги" я активизирую поле с именем "УслугиСкидка"
		    И в таблице "Услуги" в поле с именем 'УслугиСкидка' я ввожу текст '7,00'
		    И в таблице "Услуги" я завершаю редактирование строки
		    Тогда в таблице "Услуги" у поля с именем "УслугиСумма" я жду значения "46,50" в течение 5 секунд			
		* И я записываю и провожу документ
			И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
			И я жду закрытия окна 'Заказ покупателя (создание) *' в течение 5 секунд
		* Тогда в форме списка документов Заказ покупателя появляется созданный документ
			Тогда я жду, что таблица "Список" станет содержать строки в течение 5 секунд:
				| 'Договор'          | 'Организация'       | 'Контрагент'    | 'Сумма документа' |
				| 'Договор № 1'      | 'ООО "Организация"' | 'ООО "Роза"'    | '236,51'          |