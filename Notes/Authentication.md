## Добавление авторизации пользователей

Создание новой ветки

`git checkout -b authentication`

Добавление гема `'devise'` *Не забыть перезапустить сервере!*

Убедиться, что сообщения включенены в `app/views/layouts/application.html.erb`

```
<p class="notice"><%= notice %></p>
<p class="alert"><%= alert %></p>
```

Генерерирование модели пользователя авторизации

`rails generate devise User`

Генерирование представлений для модуля авторизации

`rails generate devise:views`

Добавление гема `bootstrap_form` *Не забыть перезапустить сервере!*

Добавление поля `name` при создании миграции генератором `device`

В файл `db/migrate` метод `create_table` добавляем строку

```
t.string :name, null: false, default: ""
```

Так как приложениее еще не вводилось в эксплуатацию, то можно 
просто пересоздать базы данных

**Важно, чтобы отладочный сервер при этом был остановлен!**

```
rails db:drop
rails db:create
rails db:migrate
```
