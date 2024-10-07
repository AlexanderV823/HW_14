#language: ru

@tree

Функционал: создание новой номенклатуры в справочнике

Как Пользователь я хочу
создать новую позицию номенклатуры в справочнике Номенклатура 
чтобы добавлять эту позицию в различные документы   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
    И я закрываю все окна клиентского приложения

Сценарий: создание элемента справочника Номенклатура с заполнением всех реквизитов
    * И я открываю справочник Номенклатура
        И В командном интерфейсе я выбираю 'Покупки и продажи' 'Номенклатура'
        Тогда открылось окно 'Номенклатура'
    * И я нажимаю на кнопку Создать
        И я нажимаю на кнопку с именем 'ФормаСоздать'
        Тогда открылось окно 'Номенклатура (создание)'
    * И в поле Наименование я ввожу наименование нового элемента
        И в поле с именем 'Наименование' я ввожу текст 'Цветок в горшке (Бегония)'
    * И из списка Группа я выбираю группу
        Если в выпадающем списке с именем "Родитель" есть точное значение 'Горшочные растения' Тогда
            И из выпадающего списка с именем "Родитель" я выбираю точное значение 'Горшочные растения'
        Иначе 
            И я нажимаю на кнопку создать поля с именем "Родитель"
            Тогда открылось окно 'Номенклатура (создание группы)'
            И в поле с именем 'Наименование' я ввожу текст 'Горшочные растения'
            И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
            И я жду закрытия окна 'Номенклатура (создание группы) *' в течение 20 секунд
            Тогда открылось окно 'Номенклатура (создание) *'
    * И из списка Номенклатурная Группа я выбираю номенклатурную группу
        Если в выпадающем списке с именем "НоменклатурнаяГруппа" есть точное значение 'Товары' Тогда
            И из выпадающего списка с именем "НоменклатурнаяГруппа" я выбираю точное значение 'Товары'
        Иначе 
            И я нажимаю на кнопку создать поля с именем "НоменклатурнаяГруппа"
            Тогда открылось окно 'Номенклатурная группа (создание)'
            И в поле с именем 'Наименование' я ввожу текст 'Товары 2'
            И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
            И я жду закрытия окна 'Номенклатурная группа (создание) *' в течение 20 секунд
            Тогда открылось окно 'Номенклатура (создание) *'
    * И из списка Единица Измерения я выбираю единицу измерения
        Если в выпадающем списке с именем "ЕдиницаИзмерения" есть точное значение 'штука' Тогда
            И из выпадающего списка с именем "ЕдиницаИзмерения" я выбираю точное значение 'штука'
        Иначе 
            И я нажимаю на кнопку создать поля с именем "ЕдиницаИзмерения"
            Тогда открылось окно 'Единица измерения (создание)'
            И в поле с именем 'Наименование' я ввожу текст 'штука'
            И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
            И я жду закрытия окна 'Единица измерения (создание) *' в течение 20 секунд
            Тогда открылось окно 'Номенклатура (создание) *'
    * И из списка Вид Номенклатуры я выбираю вид номенклатуры
        И из выпадающего списка с именем "ВидНоменклатуры" я выбираю точное значение 'Товар'
    * И я нажимаю на кнопку ЗаписатьИЗакрыть
        И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
        И я жду закрытия окна 'Номенклатура (создание) *' в течение 20 секунд
    * Тогда в списке появляется созданный элемент
