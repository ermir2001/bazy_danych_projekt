-- Zapytanie zwraca nazwy gier, które używają mechaniki "Deck Building"
SELECT g.name
FROM boardgames.games g
INNER JOIN boardgames.game_mechanics gm ON g.id_games = gm.id_game
INNER JOIN boardgames.mechanics m ON gm.id_mechanic = m.id_mechanics
WHERE m.name = 'Deck Building';