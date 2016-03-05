- view: user_crossref
  sql_table_name: public.t8001_user_crossref
  fields:

  - dimension_group: c8001_create
    type: time
    timeframes: [time, date, week, month, hour_of_day]
    convert_tz: false
    sql: ${TABLE}.c8001_create_date

  - dimension: c8001_did
    type: string
    sql: ${TABLE}.c8001_did

  - dimension: c8001_gaid
    type: string
    sql: ${TABLE}.c8001_gaid

  - dimension: c8001_gigyaid
    type: string
    sql: ${TABLE}.c8001_gigyaid

  - dimension: c8001_ip
    type: string
    sql: ${TABLE}.c8001_ip

  - dimension: c8001_ip_counts
    type: int
    sql: ${TABLE}.c8001_ip_counts

  - dimension: c8001_ngsid
    type: string
    sql: ${TABLE}.c8001_ngsid

  - dimension: c8001_nxtu
    type: string
    sql: ${TABLE}.c8001_nxtu

  - dimension: c8001_nxtu_or_did
    type: string
    sql: ${TABLE}.c8001_nxtu_or_did

  - dimension_group: c8001_update
    type: time
    timeframes: [time, date, week, month, hour_of_day]
    convert_tz: false
    sql: ${TABLE}.c8001_update_date

  - measure: count
    type: count
    drill_fields: []
  
  - measure: distinct_content
    type: count_distinct
    sql: ${c8001_nxtu_or_did}  

