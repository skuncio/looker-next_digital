- view: t8015_contentview_agg
  sql_table_name: public.t8015_contentview_agg
  fields:

  - dimension: c8015_action
    type: string
    sql: ${TABLE}.c8015_action

  - dimension: c8015_app_version
    type: string
    sql: ${TABLE}.c8015_app_version

  - dimension: c8015_avg_duration
    type: number
    sql: ${TABLE}.c8015_avg_duration

  - dimension: c8015_category
    type: string
    sql: ${TABLE}.c8015_category

  - dimension: c8015_channel
    type: string
    sql: ${TABLE}.c8015_channel

  - dimension: c8015_cid
    type: string
    sql: ${TABLE}.c8015_cid

  - dimension_group: c8015_datetime
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.c8015_datetime

  - dimension: c8015_news
    type: string
    sql: ${TABLE}.c8015_news

  - dimension: c8015_nxtu_or_did
    type: string
    sql: ${TABLE}.c8015_nxtu_or_did

  - dimension: c8015_page_views
    type: number
    sql: ${TABLE}.c8015_page_views

  - dimension: c8015_platform
    type: string
    sql: ${TABLE}.c8015_platform

  - dimension: c8015_product
    type: string
    sql: ${TABLE}.c8015_product

  - dimension: c8015_region
    type: string
    sql: ${TABLE}.c8015_region

  - dimension: c8015_section
    type: string
    sql: ${TABLE}.c8015_section

  - dimension: c8015_source
    type: string
    sql: ${TABLE}.c8015_source

  - dimension: c8015_video_views
    type: number
    sql: ${TABLE}.c8015_video_views

  - measure: count
    type: count
    drill_fields: []

