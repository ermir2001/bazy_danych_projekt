-- Zapytanie zwraca nazwy użytkowników i liczbę napisanych przez nich recenzji, gdzie liczba recenzji przekracza 5

SELECT u.username, COUNT(gr.id_game_reviews) AS review_count
FROM boardgames.user u
LEFT JOIN boardgames.game_reviews gr ON u.id_user = gr.id_user
GROUP BY u.id_user
HAVING COUNT(gr.id_game_reviews) > 5;
