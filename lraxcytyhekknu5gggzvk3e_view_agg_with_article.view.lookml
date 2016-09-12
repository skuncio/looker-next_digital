- view: view_agg_with_article_video
  sql_table_name: looker_scratch.lr$axcytyhekknu5gggzvk3e_view_agg_with_article
  fields:

  - dimension: average_duration
    type: number
    sql: ${TABLE}.average_duration

  - dimension: c8002_action
    type: string
    sql: ${TABLE}.c8002_action

  - dimension: c8002_app_version
    type: string
    sql: ${TABLE}.c8002_app_version

  - dimension: c8002_artid
    type: string
    sql: ${TABLE}.c8002_artid

  - dimension: c8002_category
    type: string
    sql: ${TABLE}.c8002_category

  - dimension: c8002_channel
    type: string
    sql: ${TABLE}.c8002_channel

  - dimension: c8002_cid
    type: string
    sql: ${TABLE}.c8002_cid

  - dimension_group: c8002_datetime
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.c8002_datetime

  - dimension: c8002_edm
    type: string
    sql: ${TABLE}.c8002_edm

  - dimension: c8002_issueid
    type: string
    sql: ${TABLE}.c8002_issueid

  - dimension: c8002_keyword
    type: string
    sql: ${TABLE}.c8002_keyword

  - dimension: c8002_language
    type: string
    sql: ${TABLE}.c8002_language

  - dimension: c8002_news
    type: string
    sql: ${TABLE}.c8002_news

  - dimension: c8002_platform
    type: string
    sql: ${TABLE}.c8002_platform

  - dimension: c8002_product
    type: string
    sql: ${TABLE}.c8002_product

  - dimension: c8002_region
    type: string
    sql: ${TABLE}.c8002_region

  - dimension: c8002_section
    type: string
    sql: ${TABLE}.c8002_section

  - dimension: c8002_source
    type: string
    sql: ${TABLE}.c8002_source

  - dimension: c8002_title
    type: string
    sql: ${TABLE}.c8002_title

  - dimension: total_page_views
    type: number
    sql: ${TABLE}.total_page_views

  - dimension: total_video_views
    type: number
    sql: ${TABLE}.total_video_views

  - measure: count
    type: count
    drill_fields: []

