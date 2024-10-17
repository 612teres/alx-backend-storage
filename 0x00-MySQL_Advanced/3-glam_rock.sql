-- Select bands with "Glam rock" as their main style and calculate their lifespan
SELECT 
    band_name, 
    CASE
        -- If the band is still active (split is NULL), calculate lifespan as 2022 - formed
        WHEN split IS NULL THEN 2022 - formed
        -- If the band has split, calculate lifespan as split - formed
        ELSE split - formed
    END AS lifespan
FROM 
    bands
WHERE 
    style = 'Glam rock'
ORDER BY 
    lifespan DESC;
