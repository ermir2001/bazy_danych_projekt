-- Zapytanie zwraca nazwy użytkowników, którzy napisali przynajmniej jedną recenzję

SELECT u.username, COUNT(gr.id_game_reviews) AS review_count
FROM boardgames.user u
LEFT JOIN boardgames.game_reviews gr ON u.id_user = gr.id_user
WHERE gr.id_game_reviews IS NOT NULL
GROUP BY u.id_user;
