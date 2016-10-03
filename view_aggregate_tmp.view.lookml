- view: view_aggregate_tmp
  sql_table_name: looker_scratch.tmp$ax2207y2ycsi47w8wrwcd_view_aggregate

# # You can specify the table name if it's different from the view name:
#   sql_table_name: my_schema_name.view_aggregate_tmp
#
#   fields:
# #     Define your dimensions and measures here, like this:
#     - dimension: id
#       description: "The unique ID for each order"
#       type: number
#       sql: ${TABLE}.id
#
#     - dimension_group: created
#       description: "Transaction created date"
#       type: time
#       timeframes: [date, week, month, year]
#       sql: ${TABLE}.created_at
#
#     - measure: count
#       description: "Count of orders"
#       type: count
#
#
# # Or, you could make this view a derived table, like this:
#   derived_table:
#     sql: |
#       SELECT
#         user_id as user_id
#         , COUNT(*) as lifetime_orders
#         , MAX(orders.created_at) as most_recent_purchase_at
#       FROM orders
#       GROUP BY user_id
#
#   fields:
# #     Define your dimensions and measures here, like this:
#     - dimension: user_id
#       description: "Unique ID for each user that has ordered"
#       type: number
#       sql: ${TABLE}.user_id
#
#     - dimension: lifetime_orders
#       description: "The total number of orders for each user"
#       type: number
#       sql: ${TABLE}.lifetime_orders
#
#     - dimension_group: most_recent_purchase
#       description: "The date when each user last ordered"
#       type: time
#       timeframes: [date, week, month, year]
#       sql: ${TABLE}.most_recent_purchase_at
#
#     - measure: total_lifetime_orders
#       description: "Use this for counting lifetime orders across many users"
#       type: sum
#       sql: ${lifetime_orders}



  fields:

  - dimension: view_type
    description: 'PAGEVIEW or VIDEOVIEW'
    alias: [action]
    type: string
    sql: ${TABLE}.c8002_action
    
#  - dimension: browser
#    type: string
#    sql: ${TABLE}.c8002_br

  - dimension: app_version
    type: string
    sql: ${TABLE}.c8002_app_version
    
  - dimension: artid
    type: string
    sql: ${TABLE}.c8002_artid

  - dimension: category
    type: string
    sql: ${TABLE}.c8002_category
    drill_fields: [channel, section, news]

  - dimension: channel
    type: string
    sql: ${TABLE}.c8002_channel
    drill_fields: [category, section, news]
    
  - dimension: content_id
#    view_label: Content
    type: string
    sql: ${TABLE}.c8002_cid
    
  - dimension_group: view
    type: time
    timeframes: [time, date, week, month, year]
    convert_tz: false
    sql: ${TABLE}.c8002_datetime

  - dimension: news
    type: string
    sql: ${TABLE}.c8002_news

  - dimension: platform
    type: string
    sql: ${TABLE}.c8002_platform

  - dimension: product
    type: string
    sql: ${TABLE}.c8002_product
    drill_fields: [region, platform]

  - dimension: region
    type: string
    sql: ${TABLE}.c8002_region
    drill_fields: [product, platform]

  - dimension: section
    type: string
    sql: ${TABLE}.c8002_section
    drill_fields: [channel, news]

#  - dimension: site
#    type: string
#    sql: ${TABLE}.c8002_site

  - dimension: source
    type: string
    sql: ${TABLE}.c8002_source
    
#  - dimension: title
#    view_label: Content
#    type: string
#    sql: ${TABLE}.c8002_title
    
  - dimension: user_id
    hidden: true
#    view_label: User
    type: string
    sql: ${TABLE}.c8002_nxtu_or_did

  #### measures #############

  - dimension: page_views
    hidden: true
    type: number
    sql: ${TABLE}.total_page_views
    
  - measure: total_page_views  
    type: sum
    #value_format: '#,##0'
    value_format: '[>=1000000]0.0,,"M";[>=1000]0.0,"K";0'
    sql: ${page_views}
    
  - dimension: video_views
    hidden: true
    type: number
    sql: ${TABLE}.total_video_views    
 
  - measure: total_video_views
    type: sum
    #value_format: '#,##0'
    value_format: '[>=1000000]0.0,,"M";[>=1000]0.0,"K";0'
    sql: ${video_views}
  
  - dimension: avg_video_duration
    hidden: true
    type: number
    sql: ${TABLE}.average_duration
    
  - measure: average_duration
    type: average
    value_format: '#,##0'
    sql: ${avg_video_duration}
    
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
    

