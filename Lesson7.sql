/*1. Составьте список пользователей users, которые осуществили хотя бы один заказ orders в интернет магазине. */

/*Не совсем ясна суть задачи, как она относится к сложным запросам? можно же просто вывести select distinct user_id from orders*/

select
	distinct u.id,
  	u.name,
  	u.birthday_at,
  	u.created_at,
  	u.updated_at
from users u
inner join orders o on o.user_id = u.id and o.user_id is not null

/*2. Выведите список товаров products и разделов catalogs, который соответствует товару.*/

select p.*, c.name 
from products p
inner join catalogs c on p.catalog_id  = c.id 

/*3. Пусть имеется таблица рейсов flights (id, from, to) и таблица городов cities (label, name). Поля from, to и label содержат английские названия городов, поле name — русское. 
Выведите список рейсов flights с русскими названиями городов.*/

select f.id, 
	c_from.name as from_rus, 
	c_to.name as to_rus
from flights f
left join cities c_from on f.from = c_from.label
left join cities c_to on f.to = c_to.label

/*Считаю, что называть поля таблиц зарезервированными словами типа from, table, date и тд - плохая идея*/