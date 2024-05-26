-- Zapytanie zwraca nazwy gier, które zostały wydane przez wydawcę o nazwie "Asmodee"

SELECT g.name
FROM boardgames.games g
JOIN boardgames.versions v ON g.id_games = v.id_game
JOIN boardgames.publisher p ON v.id_publisher = p.id_publisher
WHERE p.name = 'Asmodee';
