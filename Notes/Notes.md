## Создание домашней страницы приложения

Генерирование контроллера одиночных страниц

`rails g controller pages`

Установка домашней страницы

```
Rails.application.routes.draw do
  root to: 'pages#index'
end
```