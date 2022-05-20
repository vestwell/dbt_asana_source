
with base as (

    select *
    from {{ ref('stg_asana__project_status_tmp') }}

),

final as (

    select
        id as project_status_id,
        project_id,
        created_at,
        modified_at,
        color as project_status_color,
        text as project_status_text,
        title as project_status_title,
        created_by_id,
        author_id

    from base
)

select *
from final
