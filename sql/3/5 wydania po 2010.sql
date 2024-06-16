-- Zapytanie zwraca nazwy gier, których najnowsza wersja została wydana po 1 stycznia 2010 roku
SELECT g.name, MAX(v.release_date) AS latest_release
FROM boardgames.games g
JOIN boardgames.versions v ON g.id_games = v.id_game
GROUP BY g.id_games
HAVING latest_release > '2010-01-01';
