Create database NBA;

use nba;

Select * from nba_regular;


/* 5 Jogadores com maior média em cestas de 3 pontos */

Select Player, tm, 3p
from nba_regular
order by 3p desc
limit 5;


/* 10 jogadores com a maior porcentagem de pontuação ao longo da temporada regular  */

Select Player, tm, pts
from nba_regular
order by pts desc
limit 10;


/* 6 Jogadores que mais atuaram (em minutos) no time Los Angeles Lakers */

Select player, tm, mp
from nba_regular
where tm = "LAL"
order by mp desc
limit 6;


/* Todas as informações da tabela nba_playoffs */

Select * 
from nba_playoffs;


/* Verificar quais times se classificaram aos playoffs (tabela nba_playoffs) */

Select tm
from nba_playoffs
group by tm;


/* Maior pontuador dos Playoffs */

Select Player, pts
from nba_playoffs
order by pts desc
limit 1;


/* 3 maiores Centers "C" com maior número de bloqueios (BLK) */

Select Player, pos, blk
From nba_playoffs
where pos = "C"
order by blk desc;


/* Join com as tabelas nba_playoffs e nba_regular, e comparar os números das cestas de 3 do jogador Stephen Curry */

Select nr.player, nr.3p As "3 pontos na temp regular", np.3p as "3 pontos nos playoffs"
from nba_regular nr
Inner Join nba_playoffs np
on nr.player = np.player
where nr.player = "Stephen Curry";


/* Apresentar a Soma de pontuação dos jogadores do time de Miami nos playoffs */

Select tm, Truncate(SUM(pts), 2) as "Soma de pts"
from nba_playoffs
where tm = "MIA"
group by tm;


/* LISTA COM TODOS OS JOGADORES E SUAS MÉDIAS ESTATÍSTICAS DURANTE A TEMPORADA REGULAR DO TIME DE DENVER */

Select player as "Jogador", tm as "Time", pts as "Pontos", ast as "Assist", stl as "Roubos de bola", blk as "Blocks", tov"Turn Overs", pf as "Lance Livre"
From nba_regular
where tm ="DEN"
order by pts desc;

