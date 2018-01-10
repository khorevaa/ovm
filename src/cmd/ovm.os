#Использовать cli
#Использовать tempfiles

#Использовать "."
#Использовать "../core"

///////////////////////////////////////////////////////////////////////////////

Процедура ВыполнитьПриложение()
	
	КонсольноеПриложение = Новый КонсольноеПриложение(ПараметрыПриложения.ИмяПриложения(), "OneScript Version Manager");
	КонсольноеПриложение.Версия("v version", ПараметрыПриложения.Версия());
	
	КонсольноеПриложение.ДобавитьКоманду("install i", "Установка OneScript указанной версии", Новый КомандаInstall());
	КонсольноеПриложение.ДобавитьКоманду("use u", "Использовать OneScript указанной версии", Новый КомандаUse());
	КонсольноеПриложение.ДобавитьКоманду("list l", "Вывести список установленных версий", Новый КомандаList());
	
	// КонсольноеПриложение.УстановитьОсновноеДействие(ЭтотОбъект);
	КонсольноеПриложение.Запустить(АргументыКоманднойСтроки);
	
КонецПроцедуры

КодСостояния = 0;
Попытка
	ВыполнитьПриложение();
Исключение
	Сообщить(ОписаниеОшибки());
	КодСостояния = 1;
КонецПопытки;

ВременныеФайлы.Удалить();

ЗавершитьРаботу(КодСостояния);
