## Добавление авторизации пользователей

Создание новой ветки

`git checkout -b authentication`

Добавление в файле гема `'devise'`

Убедиться, что сообщения включенены в `app/views/layouts/application.html.erb`

```
<p class="notice"><%= notice %></p>
<p class="alert"><%= alert %></p>
```

Генерерирование модели пользователя авторизации

`rails generate devise User`



