{%snapshot emp_snapshot1 %}
{{
    config(
        target_database='DBT_TEST',
        target_schema='Prod',
        unique_key='emp_id',
        strategy='timestamp',
        updated_at='updated_dt'
    )
}}
select * from Prod.Stg_emp01
{%endsnapshot%}