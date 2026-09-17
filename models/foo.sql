{{
    config(
        materialized="table",
        persist_docs={"relation": true, "columns": true}
    
    )
}}

select 1 as id