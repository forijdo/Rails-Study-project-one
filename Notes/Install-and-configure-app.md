## Создание нового приложения Rails

`rails new "Rails Study project one" --no-document --database=postgresql`

Проверка корректности создания нового приложения

`rails server`

Rails version: 5.1.6.1

## Конфигурация репозитория

Создание нового репозитория

`git init`

Добавление удаленного репозитория

`git remote add origin https://github.com/forijdo/Rails-Study-project-one.git`

Начальная фиксация всех исходных файлов приложения

`git add .`

Первый коммит и передача в удаленный репозиторий

`git commit -m "init"`
`git push origin master`

## Развертывание приложения в среде Heroku

1. Установка [утилиты](https://devcenter.heroku.com/articles/heroku-cli#download-and-install) командной строки

2. Авторизация в Heroku

`heroku login`

3. Создание нового приложения Heroku

`heroku create`

```
Creating app... done, ⬢ vast-savannah-40898
https://vast-savannah-40898.herokuapp.com/ | https://git.heroku.com/vast-savannah-40898.git
```

4. Проверка добавление удаленного репозитория Heroku в конфигурацию репозитория

`git config --list`

remote.heroku.url=https://git.heroku.com/vast-savannah-40898.git
remote.heroku.fetch=+refs/heads/\*:refs/remotes/heroku/\*

5. Развертывание приложения в среде Heroku

`git push heroku master`

```
remote: Verifying deploy... done.
To https://git.heroku.com/vast-savannah-40898.git
 * [new branch]      master -> master
```

6. Выполнение миграций базы данных

`heroku run rake db:migrate`

7. Запуск приложения в среде Heroku

`heroku ps:scale web=1`

8. Просмотре приложения в браузере

`heroku open`

9. Просмотр состояния работы веб-сервера

`heroku ps`

10. Просмотр логов работы веб-сервера

`heroku logs`