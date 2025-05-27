--Subquery para a consulta de regiões mais e menos vendidas
with dados_vendas_regiao as
(	select
		game,
		genre,
		na_sales,
		eu_sales,
		jp_sales,
		other_sales,
		global_sales,
		case
			when na_sales > eu_sales and na_sales > jp_sales and na_sales > other_sales then 'na_sales'
			when eu_sales > jp_sales and eu_sales > other_sales then 'eu_sales'
			when jp_sales > other_sales then 'jp_sales'
			else 'other_sales'
		end as 	best_selling_region,
		case
			when na_sales < eu_sales and na_sales < jp_sales and na_sales < other_sales then 'na_sales'
			when eu_sales < jp_sales and eu_sales < other_sales then 'eu_sales'
			when jp_sales < other_sales then 'jp_sales'
			else 'other_sales'
		end as 	least_sold_region
	from 
		sales_games
)
-- Consulta para ver as regiões mais e menos vendidas
select
	game,
	best_selling_region,
	least_sold_region
from
	dados_vendas_regiao;


--Subquery para consulta de generos mais vendidos	
with dados_vendas_genero as	
(	select
		genre,
		sum(global_sales)  as total_sales_genre,
		sum(na_sales)  as na_sales_genre,
		sum(eu_sales)  as eu_sales_genre,
		sum(jp_sales)  as jp_sales_genre,
		sum(other_sales)  as other_sales_genre
	from
		sales_games
	group by genre	
)	
-- Consulta de rank por genero mais vendido por regiao
select
	genre,
	rank()over(order by total_sales_genre desc) as rank_total_sales_genre,
	rank()over(order by na_sales_genre desc) rank_na_sales_genre,
	rank()over(order by eu_sales_genre desc) rank_eu_sales_genre,
	rank()over(order by jp_sales_genre desc) rank_jp_sales_genre,
	rank()over(order by other_sales_genre desc) rank_other_sales_genre
from
	dados_vendas_genero
	
--Consulta de mais vendidos ps4 vs xbox

select
	ps4.Game,
	ps4.Global_Sales as PS4_sales,
	xbox.Global_Sales as XBOX_sales,
	ps4.Global_Sales - xbox.Global_Sales as sales_difference
from
	ps4_games_sales ps4 inner join
	xbox_games_sales xbox on ps4.Game = xbox.Game