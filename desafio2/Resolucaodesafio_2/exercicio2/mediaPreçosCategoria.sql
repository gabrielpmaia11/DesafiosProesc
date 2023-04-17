/*Além disso, também quer saber a média de preços de cada categoria. Monte o SQL para essa solicitação
*/
SELECT 
    CASE 
        WHEN categories.id = 1 THEN 'creme'
        WHEN categories.id = 2 THEN 'geleia'
    END AS categoria,
    AVG(price_products) as preco_medio
FROM products
INNER JOIN categories ON products.id_categories = categories.id
WHERE id_categories IN (1, 2)
GROUP BY id_categories;


/*exemplo sem o inner joi */

/*
SELECT 
    CASE 
        WHEN id_categories = 1 THEN 'creme'
        WHEN id_categories = 2 THEN 'geleia'
    END AS categoria,
    AVG(price_products) as preco_medio
FROM products
WHERE id_categories IN (1, 2)
GROUP BY id_categories;

*/
