COPY (
SELECT 
    * EXCLUDE(filename),
    regexp_extract(filename, '\d{4}-\d{2}-\d{2}', 0)::DATE as date,
    split_part(filename, '_', 4) as country
FROM read_csv_auto('data/chart_data/raw/spotify_charts*.csv', filename=true)
) TO 'data/chart_data/spotify_charts.parquet'
(FORMAT 'parquet', COMPRESSION 'zstd')