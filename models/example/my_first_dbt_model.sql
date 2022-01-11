
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/
{{ dbt_utils.log_info("first_Example has now started") }}
{{ config(materialized='table') }}

with source_data as (

    select 1 as id
    union all
    select null as id

)

select *
from source_data
{{ dbt_utils.log_info("first_Example has now completed") }}
/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
