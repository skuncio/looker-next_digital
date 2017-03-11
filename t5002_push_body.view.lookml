- view: t5002_push_body
  sql_table_name: public.t5002_push_body
  fields:

  - dimension: id
    primary_key: true
    type: string
    sql: ${TABLE}.id

  - dimension: body_group_id
    type: string
    sql: ${TABLE}.body_group_id

  - dimension: body_payload
    type: string
    sql: f_base64decode(${TABLE}.body_payload)
    
  - dimension: audience 
    type: string
    sql: json_extract_path_text(body_payload,'audience')  
    
  - dimension: device_types 
    type: string
    sql: json_extract_path_text(body_payload, 'device_types')

  - dimension: body_push_id
    type: string
    sql: ${TABLE}.body_push_id

  - dimension: body_resource
    type: string
    sql: ${TABLE}.body_resource

  - dimension: body_trimmed
    type: string
    sql: ${TABLE}.body_trimmed

  - dimension: body_variant_id
    type: string
    sql: ${TABLE}.body_variant_id

  - dimension_group: occurred
    type: time
    timeframes: [raw, time, date, week, month, quarter, year, hour_of_day]
    sql: ${TABLE}.occurred

  - dimension: offset_value
    type: string
    sql: ${TABLE}.offset_value

  - dimension_group: processed
    type: time
    timeframes: [raw, time, date, week, month, quarter, year, hour_of_day]
    sql: ${TABLE}.processed

  - dimension: type
    type: string
    sql: ${TABLE}.type

  - measure: count
    type: count
    drill_fields: [id]

