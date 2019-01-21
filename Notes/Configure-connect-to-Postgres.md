## Конфигурация взаимодейсвия с сервером баз данных

Входим в консоль управления `psql` под пользователем `postgres`

`psql -U postgres`

Создаем роль для приложения с возможностью создания базы данных

**Точка с запятой в конце команды обязательна!**
**Обратить внимание на регистр имени роли!**

`create role rails_study_project_one_app with createdb login password 'rails';`

Консоль ответит `CREATE ROLE`

Для проверки создания роли вводом `\du`

Выход из консоли `\q`

Вносим изменения в файл `config/database.yml`

```
development:
  <<: *default
  username: rails_study_project_one_app
  password: rails
  database: rails_study_project_one_development
test:
  <<: *default
  username: rails_study_project_one_app
  password: rails
  database: rails_study_project_one_test
```

Инициализация базы данных приложения

`rails db:create`

```
Created database 'rails_study_project_one_development'
Created database 'rails_study_project_one_test'
```

Выполняем первоначальную миграцию приложения

`rails db:migrate`