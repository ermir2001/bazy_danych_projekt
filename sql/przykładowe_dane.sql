INSERT INTO `boardgames`.`games` (`id_games`, `name`, `description`)
VALUES
    (1, 'Catan', 'Strategiczna gra planszowa, w której gracze zdobywają zasoby i budują osady'),
    (2, 'Carcassonne', 'Gra polegająca na układaniu kafelków i kontrolowaniu terenu'),
    (3, 'Pandemic', 'Kooperacyjna gra, w której gracze walczą z rozprzestrzeniającymi się chorobami');


INSERT INTO `boardgames`.`mechanics` (`id_mechanics`, `name`, `description`)
VALUES
    (1, 'Trading', 'Gracze mogą wymieniać się zasobami między sobą'),
    (2, 'Tile Placement', 'Gracze układają kafelki na planszy, tworząc mapę'),
    (3, 'Cooperative Play', 'Gracze muszą współpracować, aby osiągnąć wspólny cel');


INSERT INTO `boardgames`.`game_mechanics` (`id_game`, `id_mechanic`)
VALUES
    (1, 1),
    (2, 2),
    (3, 3); 


INSERT INTO `boardgames`.`user` (`id_user`, `username`, `email`, `password`, `first_name`, `last_name`)
VALUES
    (1, 'user1', 'user1@example.com', 'password123', 'John', 'Doe'),
    (2, 'user2', 'user2@example.com', 'password234', 'Jane', 'Smith'),
    (3, 'user3', 'user3@example.com', 'password345', 'Alice', 'Johnson');
    
    
INSERT INTO `boardgames`.`game_reviews` (`id_game_reviews`, `id_game`, `id_user`, `rating`, `review`)
VALUES
    (1, 1, 1, 5, 'Świetna gra dla całej rodziny!'),
    (2, 2, 2, 4, 'Dobra zabawa, ale czasami zbyt losowa.'),
    (3, 3, 3, 5, 'Doskonała gra kooperacyjna, pełna wyzwań.');
    

INSERT INTO `boardgames`.`publisher` (`id_publisher`, `name`)
VALUES
    (1, 'Asmodee'),
    (2, 'Z-Man Games'),
    (3, 'Kosmos');


INSERT INTO `boardgames`.`versions` (`id_versions`, `id_game`, `version_number`, `release_date`, `id_publisher`)
VALUES
    (1, 1, 1, '2015-05-15', 3),
    (2, 2, 1, '2016-07-20', 1),
    (3, 3, 2, '2017-09-10', 2);
