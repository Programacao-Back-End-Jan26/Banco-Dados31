--1- Qual foi a quantia que cada funcionário recebeu?
--seleciona todas as colunas da tabela funciionário
select
	s.staff_id,
	s.first_name,
	s.last_name, 
	sum(p.amount)
from
	staff s
inner join payment p on
	s.staff_id = p.staff_id
group by
	s.staff_id,
	s.first_name,
	s.last_name;

--2-Quantos filmes há em cada categoria?
select c."name", count(f.film_id)
from film f
inner join film_category fc on f.film_id = fc.film_id
inner join category c on c.category_id = fc.category_id
group by c."name";

--3- Quantos funcionários residem em cada cidade?
select
	c.city,
	count(s.staff_id)
from
	staff s
inner join address a on
	s.address_id = a.address_id
inner join city c on
	a.city_id = c.city_id 
group by 
	c.city;

--4- Selecione os campos: título do filme, idioma, categoria, quantia, loja, país. (View)
select f.title, l.name, c.name, f.rental_rate, a.address, co.country 
from film f
inner join film_category fc on f.film_id = fc.film_id 
inner join category c on fc.category_id = c.category_id
inner join language l on f.language_id = l.language_id 
inner join inventory i on f.film_id = i.film_id 
inner join rental r on i.inventory_id = r.inventory_id 
inner join customer cu on r.customer_id = cu.customer_id 
inner join address a on cu.address_id = a.address_id 
inner join city ci on a.city_id = ci.city_id 
inner join country co on ci.country_id = co.country_id;


