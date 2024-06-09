ALTER TABLE `boardgames`.`games`
ADD COLUMN `min_players` INT(11) NOT NULL DEFAULT 1,
ADD COLUMN `max_players` INT(11) NOT NULL DEFAULT 1,
ADD COLUMN `play_time` INT(11) NULL DEFAULT NULL,
ADD COLUMN `complexity` DECIMAL(3,2) NULL DEFAULT NULL;


ALTER TABLE `boardgames`.`game_reviews`
ADD COLUMN `review_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP;

ALTER TABLE `boardgames`.`versions`
ADD COLUMN `components` VARCHAR(255) NULL DEFAULT NULL;