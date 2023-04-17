/*
Faça um SQL para atualizar todos os produtos da categoria Cremes e Geleias para a categoria Frutas
*/

UPDATE products
INNER JOIN categories ON products.id_categories = categories.id
SET id_categories = 3
WHERE id_categories IN (1, 2);

/*exemplo sem inner joi*/
/*

UPDATE products
SET id_categories = 3
WHERE id_categories IN (1, 2);

*/