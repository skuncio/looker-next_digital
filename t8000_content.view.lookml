- view: content
  sql_table_name: public.t8000_content
  fields:

#   - dimension: c8000_auth
#     type: string
#     sql: ${TABLE}.c8000_auth

  - dimension: cid
    hidden: true
    type: string
    sql: ${TABLE}.c8000_cid

  - dimension: content
    type: string
    sql: ${TABLE}.c8000_content

#   - dimension: c8000_media
#     type: string
#     sql: ${TABLE}.c8000_media

#   - dimension: c8000_product
#     type: string
#     sql: ${TABLE}.c8000_product
# 
#   - dimension: c8000_region
#     type: string
#     sql: ${TABLE}.c8000_region

#   - dimension: c8000_src
#     type: string
#     sql: ${TABLE}.c8000_src

  - dimension: video_length
    type: number
    sql: ${TABLE}.c8000_video_length

  - dimension: video_path
    type: string
    sql: ${TABLE}.c8000_video_path

#   - measure: count
#     type: count
#     drill_fields: []
    
  - measure: distinct_content
    type: count_distinct
    sql: ${cid}  

