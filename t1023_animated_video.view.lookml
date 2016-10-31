- view: t1023_animated_video
  sql_table_name: public.t1023_animated_video
  fields:

  - dimension: c1023_animated
    type: string
    sql: ${TABLE}.c1023_animated

  - dimension: c1023_artid
    type: string
    sql: ${TABLE}.c1023_artid

  - dimension: c1023_auto
    type: string
    sql: ${TABLE}.c1023_auto

  - dimension: c1023_cid
    type: string
    sql: ${TABLE}.c1023_cid

  - dimension_group: c1023_date_id
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.c1023_date_id

  - dimension: c1023_hour_id
    type: number
    sql: ${TABLE}.c1023_hour_id

  - dimension: c1023_imps
    type: number
    sql: ${TABLE}.c1023_imps

  - dimension_group: c1023_issue_id
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.c1023_issue_id

  - dimension: c1023_preaug16
    type: string
    sql: ${TABLE}.c1023_preaug16

  - dimension: c1023_product
    type: string
    sql: ${TABLE}.c1023_product

  - dimension: c1023_region
    type: string
    sql: ${TABLE}.c1023_region

  - dimension: c1023_source
    type: string
    sql: ${TABLE}.c1023_source

  - dimension: c1023_title
    type: string
    sql: ${TABLE}.c1023_title

  - dimension: c1023_uid
    type: string
    sql: ${TABLE}.c1023_uid

  - dimension: c1023_video_length
    type: number
    sql: ${TABLE}.c1023_video_length

  - dimension: c1023_video_viewed
    type: number
    sql: ${TABLE}.c1023_video_viewed

#### measures #############
  
  - measure: count
    type: count
    drill_fields: []
    
  - measure: Impression_Sum
    type: sum
    value_format: '[>=1000000]0.0,,"M";[>=1000]0.0,"K";0'    
    sql: ${c1023_imps}
    
  - measure: average_duration
    type: average
    value_format: '#,##0'
    sql: ${c1023_video_viewed}
    
  - measure: distinct_users
#    view_label: User
    type: count_distinct
    sql: ${c1023_uid}
    approximate: true
    
  - measure: distinct_content
#    view_label: Content
    type: count_distinct
    sql: ${c1023_cid}
    approximate: true

