## Создание домашней страницы приложения

Генерирование контроллера одиночных страниц

`rails g controller pages`

Установка домашней страницы

```
Rails.application.routes.draw do
  root         to: 'pages#index'
  get 'index', to: 'pages#index'
end
```

## Добавление поддержки Bootstrap

В файл Demfile добавить строки

```
gem 'bootstrap-sass'
gem 'sassc-rails'
gem 'jquery-rails'
```

и выполнить команду

`bundle update`

Для активации гемов необходимо перезапустить сервер.

Во время компиляции ассетов возникли проблемы. Установка Node.js
и задание его в качестве компилятора исправило ситуацию

Файл `config/boot.rb`

```
ENV['EXECJS_RUNTIME'] = 'Node'
```