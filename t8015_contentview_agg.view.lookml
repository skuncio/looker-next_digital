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

  - dimension: content_id
    type: string
    sql: ${TABLE}.c8015_cid

  - dimension_group: c8015_datetime
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.c8015_datetime

  - dimension: c8015_news
    type: string
    sql: ${TABLE}.c8015_news

  - dimension: user_id
    type: string
    sql: ${TABLE}.c8015_nxtu_or_did

  - dimension: c8015_page_views
    hidden: true
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
    hidden: true
    type: number
    sql: ${TABLE}.c8015_video_views

#  - measure: count
#    type: count
#    drill_fields: []
    
  #### measures #############

#  - dimension: page_views
#    hidden: true
#    type: number
#    sql: ${TABLE}.total_page_views
    
  - measure: total_page_views  
    type: sum
    #value_format: '#,##0'
    value_format: '[>=1000000]0.0,,"M";[>=1000]0.0,"K";0'
    sql: ${c8015_page_views}
    
#  - dimension: video_views
#    hidden: true
#    type: number
#    sql: ${TABLE}.total_video_views    
 
  - measure: total_video_views
    type: sum
    #value_format: '#,##0'
    value_format: '[>=1000000]0.0,,"M";[>=1000]0.0,"K";0'
    sql: ${c8015_video_views}
  
#  - dimension: avg_video_duration
#    hidden: true
#    type: number
#    sql: ${TABLE}.average_duration
    
  - measure: average_duration
    type: average
    value_format: '#,##0'
    sql: ${c8015_avg_duration}
    
  - measure: count
    type: count
    drill_fields: []
    
  - measure: distinct_users
#    view_label: User
    type: count_distinct
    sql: ${user_id}  
    
  - measure: distinct_content
#    view_label: Content
    type: count_distinct
    sql: ${content_id} 
    


