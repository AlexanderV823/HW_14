﻿#language: ru

@tree

Функционал: Использование экспортных сценариев

Как Пользователь я хочу
выполнить мои экспортные сценарии 
чтобы проверить возможность использования моих экспортных сценариев   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	И я закрываю все окна клиентского приложения
	
Сценарий: выполнение моих экспортных сценариев
	И я создаю новый элемент справочника Номенклатура с указанием "Герань", "Горшочные растения", "Горшочные растения", "Штука", "Товар"
	И я создаю новый документ ПоступлениеТоваровУслуг с указанием "ООО Ромашка", "ООО Лютик", "Договор №2", "Маша", "+79996666", "Менеджер", "Герань2", "2", "100", "Доставка2", "50"
		