### Задача

* Написать terraform-файл, который будет создавать виртуальную машину в vscale.i

## Предпосылки

* Установить terraform
* Установить Go 1.8 (to build the provider plugin)
* Собрать плагин terraform для vscale

## Развертывание

* Конфигурируем main.tf
* Выносим описание variables  в отдельный файл variables.tf
* Описываем в фале outputs.tf выводимые значения
* Переменные объявляем в файле terraform.tfvars (В файле объявляем токен, имя образа, Id дата-центра)
* В файле terraform.tfvars.sample описано назначение переменных

## Проверяем подключение по ssh

*  ssh root@5.188.41.190
*  cat ~/.ssh/authorized_keys (проверяем пробросились ли все ключи)

 
## Авторы

  - Sergey Babanin https://gitlab.rebrainme.com/babaninsergey
