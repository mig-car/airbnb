-- What is the number of reviews and date of the latest review, by property type?

-- +-------------------------------------+----------+----------------------------+
-- | Boat                                | 2        | 2021-06-19                 |
-- | Entire bungalow                     | 424      | 2021-10-18                 |
-- | Entire condominium (condo)          | 26518    | 2021-10-18                 |
-- | Entire cottage                      | 129      | 2021-10-12                 |
-- | Entire guest suite                  | 11176    | 2021-10-18                 |
-- | Entire guesthouse                   | 3577     | 2021-10-18                 |
-- | Entire home/apt                     | 21       | 2019-10-19                 |
-- | Entire loft                         | 8416     | 2021-10-17                 |
-- | Entire place                        | 10       | 2019-03-31                 |
-- | Entire rental unit                  | 149681   | 2021-10-18                 |
-- | Entire residential home             | 13889    | 2021-10-18                 |
-- | Entire serviced apartment           | 1271     | 2021-10-17                 |
-- | Entire townhouse                    | 3588     | 2021-10-17                 |
-- | Entire villa                        | 75       | 2021-10-12                 |


select property_type
, count(distinct r.id) as reviews
, max(date_reviewed) as last_review_date
from listings l inner join reviews r on l.id = r.listing_id
group by 1
order by 1 asc;