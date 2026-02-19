/*
# Data cleaning steps
1.Remove all the unnecessary columns by only selecting the one we needs
2.extract channel names from numbering/first columns
3.Rename column names (because is not in English)
*/

--SELECT
--	NOMBRE,
--	total_subscribers,
--	total_views,
--	total_videos
--FROM 
--	top_uk_youtubers_2024

CREATE VIEW view_uk_youtubers_2024 AS
--Using SUBSTRING and CHARINDEX to extract channel name from NOMBRE column and CAST to convert it to VARCHAR
SELECT 
	CAST(SUBSTRING(NOMBRE, 1, CHARINDEX('@', NOMBRE) -1) AS VARCHAR(100)) as channel_name,
	total_subscribers,
	total_views,
	total_videos
FROM 
	top_uk_youtubers_2024