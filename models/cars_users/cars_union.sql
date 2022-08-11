{{config(schema='final_transformation',materialized='table')}} 
with user_car_data as(
    select * from {{source('users_cars','users_cars')}}
),
user_car_data_two as (
    select * from {{source('users_cars_two','users_cars')}}
),
final as
(
select * from user_car_data union all select * from user_car_data_two
)

select * from final 