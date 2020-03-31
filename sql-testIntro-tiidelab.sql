USE `sql_store`;

SELECT * FROM `order_items`;

ALTER TABLE `order_items`
	ADD `total_price` DECIMAL(10,2) NOT NULL
		AFTER `unit_price`;
        
UPDATE `order_items` SET  `total_price` = `unit_price` * `quantity` WHERE `order_id` != 0;

SELECT * FROM `order_items` WHERE `order_id`=6 AND `total_price`>30;

SELECT * FROM `products` WHERE `quantity_in_stock` IN (49, 38, 72);