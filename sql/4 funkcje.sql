CREATE FUNCTION boardgames.get_game_count()
RETURNS INT
BEGIN
    DECLARE game_count INT;
    SELECT COUNT(*) INTO game_count FROM boardgames.games;
    RETURN game_count;
END