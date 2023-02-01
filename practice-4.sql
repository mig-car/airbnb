-- How many listings are in Lincoln Park?

-- +----------+
-- | 272      |
-- +----------+

.mode column
.headers on

select count(*)
from listings
where neighborhood = "Lincoln Park";