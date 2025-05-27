--Tabeba vendas geral
create table sales_games(
	Rank int primary key,
	Game varchar,
	Platform varchar,
	Year varchar,
	Genre varchar,
	Publisher varchar,
	NA_Sales float,
	EU_Sales float,
	JP_Sales float,
	Other_Sales float,
	Global_Sales float
)

--Tabela de vendas do ps4
create table ps4_games_sales(
	Game varchar ,
	Platform varchar,
	Year varchar,
	Genre varchar,
	NA_Sales float,
	EU_Sales float,
	JP_Sales float,
	Other_Sales float,
	Global_Sales float
)

--Tabela vendas Xbox
create table xbox_games_sales(
	Pos int primary key, 
	Game varchar ,
	Year varchar,
	Genre varchar,
	Publisher varchar,
	NA_Sales float,
	EU_Sales float,
	JP_Sales float,
	Other_Sales float,
	Global_Sales float
)

select rank from projeto_games;

