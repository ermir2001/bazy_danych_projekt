-- Zapytanie zwraca nazwy gier oraz średnią ocen i liczbę ocen, gdzie średnia ocena jest równa lub wyższa niż 4

SELECT g.name, AVG(gr.rating) AS average_rating, COUNT(gr.rating) AS number_of_ratings
FROM boardgames.games g
LEFT JOIN boardgames.game_reviews gr ON g.id_games = gr.id_game
GROUP BY g.id_games
HAVING AVG(gr.rating) >= 4;