SELECT c.id AS category_id,
       c.category,
       p.title,
       p.views,
       p.post_id
FROM categories c
LEFT JOIN LATERAL
(SELECT id as post_id,
        category_id,
        title,
        views
FROM posts WHERE category_id = c.id
ORDER BY views DESC, id
LIMIT 2) p
ON c.id = p.category_id
ORDER BY c.category, p.views desc, p.post_id;