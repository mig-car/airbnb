-- How many reviews are there?

-- +----------+
-- | 302750   |
-- +----------+

.mode column
.headers on

select count(*)
from reviews;
