/*1. ��������� ������ ������������� users, ������� ����������� ���� �� ���� ����� orders � �������� ��������. */

/*�� ������ ���� ���� ������, ��� ��� ��������� � ������� ��������? ����� �� ������ ������� select distinct user_id from orders*/

select
	distinct u.id,
  	u.name,
  	u.birthday_at,
  	u.created_at,
  	u.updated_at
from users u
inner join orders o on o.user_id = u.id and o.user_id is not null

/*2. �������� ������ ������� products � �������� catalogs, ������� ������������� ������.*/

select p.*, c.name 
from products p
inner join catalogs c on p.catalog_id  = c.id 

/*3. ����� ������� ������� ������ flights (id, from, to) � ������� ������� cities (label, name). ���� from, to � label �������� ���������� �������� �������, ���� name � �������. 
�������� ������ ������ flights � �������� ���������� �������.*/

select f.id, 
	c_from.name as from_rus, 
	c_to.name as to_rus
from flights f
left join cities c_from on f.from = c_from.label
left join cities c_to on f.to = c_to.label

/*������, ��� �������� ���� ������ ������������������ ������� ���� from, table, date � �� - ������ ����*/