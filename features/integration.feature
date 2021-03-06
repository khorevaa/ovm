#language: ru

Функциональность: Интеграционный сценарий

Как Пользователь ovm
Я хочу быть уверен, что оно в принципе работает
Чтобы начать применять ovm в жизни

Контекст:
    Допустим Я устанавливаю переменной среды "OVM_INSTALL_PATH" значение "./temp/ovm"


Сценарий: Вывод справки
    Когда Я выполняю команду "ovm"
    Тогда я вижу в консоли вывод "OneScript Version Manager"
    И я вижу в консоли вывод "Строка запуска: ovm [OPTIONS] КОМАНДА [аргументы...]"

Сценарий: Вывод версии
    Когда Я выполняю команду "ovm -v"
    Тогда я вижу в консоли строку подобно "\d+\.\d+\.\d+"

Сценарий: Установка версии
    Когда Я выполняю команду "ovm install stable"
    Тогда я вижу в консоли вывод "Установка OneScript stable..."
    И я вижу в консоли вывод "Установка OneScript stable завершена"
    И я вижу в консоли вывод "ovm use stable"

    Когда Я выполняю команду "ovm ls"
    Тогда я вижу в консоли строку подобно "stable -> .*"
    
Сценарий: Использование версии
    Допустим Я выполняю команду "ovm install stable"
    Когда Я выполняю команду "ovm use stable"
    Тогда я вижу в консоли вывод "OneScript stable активирован"

Сценарий: Проверка использования версии
    Когда Я выполняю команду "ovm ls"
    И Я Показываю вывод команды
    Тогда я вижу в консоли строку подобно "current -> .*"
    И Я выполняю команду "which oscript"
    И я вижу в консоли строку подобно ".*oscript$"
    И Я выполняю команду "which opm"
    И я вижу в консоли строку подобно ".*opm$"
