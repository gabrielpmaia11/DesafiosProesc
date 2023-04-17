/*
	O cliente gostaria de saber quantos produtos ele possui em cada categoria. 
	Qual SQL você faria para realizar essa consulta?

   Usei inner joi neste, mas fiz outro abaixo sem ele
	
	E fiz tambem pra aproveitar um SQL para soma dos precos por categoria no final 
		
*/
	

SELECT 
    CASE 
        WHEN categories.id = 1 THEN 'creme'
        WHEN categories.id = 2 THEN 'geleia'
    END AS categories,
    COUNT(*) as quantidade
FROM products
INNER JOIN categories ON products.id_categories = categories.id
WHERE id_categories IN (1, 2)
GROUP BY id_categories;

/*
SELECT 
    CASE 
        WHEN id_categories = 1 THEN 'creme'
        WHEN id_categories = 2 THEN 'geleia'
    END AS categories,
    COUNT(*) as quantidade
FROM products
WHERE id_categories IN (1, 2)
GROUP BY id_categories;
*/


/*

	SELECT 
    CASE 
        WHEN categories.id = 1 THEN 'creme'
        WHEN categories.id = 2 THEN 'geleia'
    END AS categories,
    COUNT(*) as quantidade
	FROM products
	INNER JOIN categories ON products.id_categories = categories.id
	WHERE id_categories IN (1, 2)
	GROUP BY id_categories;
*/

