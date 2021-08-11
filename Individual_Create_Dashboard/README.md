# Individual: Create Dashboard
## Note
For this assigment, I stripped out the specific filters that I had added to the views in previous assignments to have more usable charts with filter-able dates:

```sql
JOIN pricehistory using(pricehistorykey)
WHERE sectionyear >= EXTRACT(YEAR from CURRENT_DATE)
AND quarterkey >= EXTRACT(QUARTER FROM CURRENT_DATE);
```

Additionally, I had to create a field in all views of the `Quarter Year` and use this as the join in Tableau, so that the charts would filter accross each other.
