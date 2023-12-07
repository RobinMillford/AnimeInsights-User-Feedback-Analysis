create Database Anim;

use Anim;

select * from Anime;

-- 1.the total number of anime
SELECT COUNT(Distinct(title)) AS total_anime
FROM anime;

-- 2. the top 10 anime titles with the highest scores
SELECT TOP 10
	title, rank, score
FROM
    anime
ORDER BY
    score DESC;

-- 3.  top 10 anime movie
SELECT
Top 10
title, score, episodes
FROM anime
WHERE episodes = 1
ORDER BY score DESC;


-- 4. Top 10 Anime Series.
SELECT TOP 10
    title, score, episodes
FROM
    anime
WHERE
    episodes > 1
ORDER BY
    score DESC;


-- 5. the top 10 popular anime titles with a non-zero score
SELECT TOP 10
    title, popularity, score
FROM
    anime
WHERE
    score <> 0
ORDER BY
    popularity DESC;


-- 6. the top 10 popular anime titles with a single episode and non-zero scores
SELECT TOP 10
    title, popularity, score, episodes
FROM
    anime
WHERE
    episodes = 1
    AND score <> 0
ORDER BY
    popularity DESC;


-- 7.the top 10 popular anime titles with multiple episodes and non-zero scores
SELECT TOP 10
    title, popularity, score, episodes
FROM
    anime
WHERE
    episodes > 1
    AND score <> 0
ORDER BY
    popularity DESC;



-- 8. 
SELECT TOP 10
    title, score, episodes
FROM
    anime
WHERE
    episodes = 0
ORDER BY
    score DESC;


-- 9. the top 10 comedy anime titles (excluding 1-episode shows)
SELECT TOP 10
    title, score, episodes, genres
FROM
    anime
WHERE
    episodes <> 1
    AND genres LIKE '%Comedy%'
ORDER BY
    score DESC;

-- 10. the anime title with the highest score 
SELECT
    title,
    score AS top_score
FROM
    anime
WHERE
    score = (SELECT MAX(score) FROM anime);


-- 11. the anime title with the lowest non-zero score
SELECT
    title,
    score AS lowest_score
FROM
    anime
WHERE
    score > 0 AND score = (SELECT MIN(score) FROM anime WHERE score > 0);

-- 12. he top 10 episode counts with the most anime titles
SELECT TOP 10
    episodes,
    COUNT(*) AS no_of_animes
FROM
    anime
WHERE
    episodes > 1
GROUP BY
    episodes
ORDER BY
    no_of_animes DESC;