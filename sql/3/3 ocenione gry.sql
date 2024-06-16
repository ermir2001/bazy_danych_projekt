-- Zapytanie zwraca nazwy gier oraz średnią ocen i liczbę ocen, gdzie średnia ocena jest równa lub wyższa niż 4
SELECT g.name
FROM boardgames.games g
INNER JOIN boardgames.game_mechanics gm ON g.id_games = gm.id_game
INNER JOIN boardgames.mechanics m ON gm.id_mechanic = m.id_mechanics
WHERE m.name = 'Deck Building';