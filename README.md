# Installation and first run
* mysql -u root < init.sql
* mvn clean package
* mvn spring-boot:run

# Release notes
Я к сожалению не успел причесать код. 
Отсутствует валидация данных, границы pagination, кнопка очистки фильтра. 
Ну и дизайн страниц можно сделать лучше.
Нужно разобраться, почему запуск через java -jar не находит jsp шаблоны.
Но это максимум из того, что можно сделать за 6 часов не зная Hibernate и Spring :(
