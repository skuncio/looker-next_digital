- view: t1021_cid_title_day
  sql_table_name: public.t1021_cid_title_day
  fields:

  - dimension: c1021_anim_type
    type: string
    sql: ${TABLE}.c1021_anim_type

  - dimension_group: c1021_change
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.c1021_change_date

  - dimension: c1021_cid
    type: string
    sql: ${TABLE}.c1021_cid

  - dimension: c1021_imp_type
    type: string
    sql: ${TABLE}.c1021_imp_type

  - dimension_group: c1021_ml_anim_title_ts
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.c1021_ml_anim_title_ts

  - dimension: c1021_ml_log_ind
    type: string
    sql: ${TABLE}.c1021_ml_log_ind

  - dimension: c1021_product
    type: string
    sql: ${TABLE}.c1021_product

  - dimension: c1021_region
    type: string
    sql: ${TABLE}.c1021_region

  - dimension: c1021_title
    type: string
    sql: ${TABLE}.c1021_title

  - dimension: c1021_video_length
    type: number
    sql: ${TABLE}.c1021_video_length

  - dimension: c1021_video_path
    type: string
    sql: ${TABLE}.c1021_video_path

  - measure: count
    type: count
    drill_fields: []

