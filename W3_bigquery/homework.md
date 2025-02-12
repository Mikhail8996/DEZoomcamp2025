1. SELECT count(*) FROM `de-zoomcamp-2025-449310.ny_taxi_external.yellow_tripdata` LIMIT 1000
--20332093

2. SELECT count(distinct PULocationID) FROM `de-zoomcamp-2025-449310.ny_taxi.yellow_tripdata` LIMIT 1000
--156MB
   SELECT count(distinct PULocationID) FROM `de-zoomcamp-2025-449310.ny_taxi_external.yellow_tripdata` LIMIT 1000
-- 0B

3. BigQuery is a columnar database, and it only scans the specific columns requested in the query. Querying two columns (PULocationID, DOLocationID) requires reading more data than querying one column (PULocationID), leading to a higher estimated number of bytes processed.

4. SELECT count(*) FROM `de-zoomcamp-2025-449310.ny_taxi.yellow_tripdata` where fare_amount = 0
-- 8333

5. Partition by tpep_dropoff_datetime and Cluster on VendorID

6. select distinct vendorID
from `ny_taxi.yellow_tripdata`
where tpep_dropoff_datetime between '2024-03-01' and '2024-03-15'

--310.24 MB

select distinct vendorID
from `ny_taxi.yellow_tripdata_partitioned`
where tpep_dropoff_datetime between '2024-03-01' and '2024-03-15'

--26.84 MB

7.