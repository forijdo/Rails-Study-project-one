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