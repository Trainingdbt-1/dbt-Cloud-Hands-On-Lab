with CI_TEST as (

    select * from {{ source('tpch', 'lineitem') }}

),

renamed as (

    select
    
        l_returnflag as return_flag,
        l_linestatus as status_code,
        l_shipdate as ship_date,
        l_commitdate as commit_date,
        l_receiptdate as receipt_date,
        l_shipinstruct as ship_instructions,
        l_shipmode as ship_mode,
        l_comment as comment

    from CI_TEST

)

select * from renamed