Функция: создание новой номенклатуры в справочнике
    создание нового документа ПоступлениеТоваровУслуг
    создание нового документа ОплатаПоставщику
    создание нового документа ЗаказПоукупателя с созданием новой номенклатуры
    
    Сценарий: создание элемента справочника Номенклатура с заполнением всех реквизитов
        И я выбираю раздел Покупки и продажи
        И я открываю справочник Номенклатура
        Тогда открылось окно справочника Номенклатура
        И я нажимаю на кнопку Создать
        Тогда открылось окно создание нового элемента
        И в поле Наименование я ввожу наименование нового элемента
        И из списка Группа я выбираю группу
        И из списка Номенклатурная Группа я выбираю номенклатурную группу
        И из списка Единица Измерения я выбираю единицу измерения
        И из списка Вид Номенклатуры я выбираю вид номенклатуры
        И я нажимаю на кнопку ЗаписатьИЗакрыть
        И я жду закрытия окна создания нового элемента
        Тогда в списке появляется созданный элемент

    Сценарий: создание документа ПоступлениеТоваровУслуг с заполнением всех реквизитов
        И я выбираю раздел Покупки и продажи
        И я открываю список документов Поступления товаров и услуг
        Тогда открылось окно списка документов Поступления товаров и услуг
        И я нажимаю на кнопку Создать
        Тогда открылось окно создания документа Поступление товаров и услуг
        И из списка Организация я выбираю организацию
        И из списка Контрагент я выбираю контрагента
        И из списка Договор я выбираю договор
        И из списка Контактное Лицо я выбираю контактное лицо
        И в таблице Товары я нажимаю на кнопку Добавить
        И в таблице Товары из списка Номенклатура я выбираю наименование номенклатуры
        И в таблице Товары в поле Количество я ввожу количество
        И в таблице Товары в поле Цена я ввожу цену
        И в таблице Товары автоматически расчитывается сумма
        И я перехожу к закладке Услуги
        И в таблице Услуги я нажимаю на кнопку Добавить
        И в таблице Услуги из списка Номенклатура я выбираю номенклатуру
        И в таблице Услуги в поле Количество я ввожу количество
        И в таблице Услуги в поле Цена я ввожу цену
        И в таблице Услуги автоматически расчитывается сумма
        И я нажимаю на кнопку ПровестиИЗакрыть
        И я жду закрытия окна создания документа Поступление товаров и услуг
        Тогда в форме списка документов Поступления товаров и услуг появляется созданный документ
           
    Сценарий: создание документа ОплатаПоставщику с заполнением всех реквизитов
        И я выбираю раздел Деньги
        И я открываю список документов Оплаты поставщика
        Тогда открылось окно списка документов Оплаты поставщикам
        И я нажимаю на кнопку Создать
        Тогда открылось окно создание документа Оплата поставщику
        И из списка Организация я выбираю организацию
        И из списка Контрагент я выбираю контрагента
        И из списка Договор я выбираю договор
        И из списка с Контактное Лицо я выбираю контактное лицо
        И в поле  СуммаДокумента я ввожу текст сумму
        И в поле Комментарий я ввожу текст
        И я нажимаю на кнопку ПровестиИЗакрыть
        И я жду закрытия окна создания документа Оплата поставщику
        Тогда в форме списка документов Оплаты поставщикам появляется созданный документ

    Сценарий: создание документа ЗаказПокупателя с созданием новой позиции номенклатуры
        И я выбираю раздел Покупки и продажи
        И я открываю список документов Заказы покупателей
        Тогда открылось окно Заказы покупателей
        И я нажимаю на кнопку Создать
        Тогда открылось окно создание нового документа Заказ покупателя
        И из списка Организация я выбираю организацию
        И из списка Контрагент я выбираю контрагента
        И из списка Договор я выбираю договор
        И из списка КонтактноеЛицо я выбираю контактное лицо
        И в таблице Товары я нажимаю на кнопку Добавить
        И в таблице Товары я нажимаю кнопку выбора номенклатуры
        Тогда открылось окно Номенклатура
        И я нажимаю на кнопку Создать
        Тогда открылось окно создание новой Номенклатура
        И в поле Наименование я ввожу наименование
        И из списка НоменклатурнаяГруппа я выбираю номенклатурную группу
        И из списка ЕдиницаИзмерения я выбираю единицу измерения
        И из списка ВидНоменклатуры я выбираю вид номенклатуры
        И я нажимаю на кнопку ЗаписатьИЗакрыть
        И я жду закрытия окна создания Номенклатуры в течение 20 секунд
        Тогда открылось окно Номенклатура
        И в таблице Список я выбираю созданную номенклатуру
        Тогда открылось окно создание Заказа покупателя
        И в таблице Товары в поле Количество я ввожу количество
        И в таблице Товары в поле Цена я ввожу цену
        И в таблице Товары в поле Скидка я ввожу скидку
        И в таблице Товары автоматически рассчитывается сумма
        И я перехожу к закладке с именем Услуги
        И в таблице Услуги я нажимаю на кнопку Добавить
        И в таблице Услуги из списка Номенклатура я выбираю номенклатуру
        И в таблице Услуги в поле Количество я ввожу количество
        И в таблице Услуги в поле Цена я ввожу цену
        И в таблице Услуги в поле Скидка я ввожу скидку
        И в таблице Услуги автоматически рассчитывается сумма
        И я нажимаю на кнопку ПровестиИЗакрыть
        И я жду закрытия окна Заказ покупателя в течение 20 секунд
        Тогда в форме списка документов ЗаказПолкупателя появляется созданный документ