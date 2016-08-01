- view: view_agg_with_article

# Or, you could make this view a derived table, like this :
  derived_table:
    sql_trigger_value: select date(convert_timezone('hkt', getdate()))
    sortkeys: [c8002_datetime]
    distkey: c8002_datetime
    sql: |
        SELECT 
        DATE(contentview.c8002_datetime) as "c8002_datetime",
        contentview.c8002_action,
        contentview.c8002_category,
        contentview.c8002_channel,
        contentview.c8002_product ,
        contentview.c8002_region ,
        contentview.c8002_platform ,
        contentview.c8002_news ,
        contentview.c8002_section ,
        contentview.c8002_title ,
        contentview.c8002_cid ,
        COUNT(CASE WHEN (contentview.c8002_action = 'PAGEVIEW') THEN 1 ELSE NULL END) AS "total_page_views",
        COUNT(CASE WHEN (contentview.c8002_action = 'VIDEOVIEW') THEN 1 ELSE NULL END) AS "total_video_views",
        AVG(CASE WHEN (contentview.c8002_action = 'VIDEOVIEW') 
        THEN contentview.c8002_video_duration ELSE NULL END ) AS "avg_video_duration"
        FROM public.t8002_contentview AS contentview
        GROUP BY 1,2,3,4,5,6,7,8,9,10,11,12
        ORDER BY 1 ASC



  fields:

#  - dimension: browser
#    type: string
#    sql: ${TABLE}.c8002_br

  - dimension: action
    type: string
    sql: ${TABLE}.c8002_action
    
  - dimension: category
    type: string
    sql: ${TABLE}.c8002_category
    drill_fields: [section, product]

  - dimension: channel
    type: string
    sql: ${TABLE}.c8002_channel
    
  - dimension: cid
    type: string
    sql: ${TABLE}.c8002_cid

  - dimension_group: view
    type: time
    timeframes: [time, date, week, month, year, hour_of_day]
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
    drill_fields: [section, category]

  - dimension: region
    type: string
    sql: ${TABLE}.c8002_region

  - dimension: section
    type: string
    sql: ${TABLE}.c8002_section
    drill_fields: [product, category]

  - dimension: site
    type: string
    sql: ${TABLE}.c8002_site
    
  - dimension: title
    type: string
    sql: ${TABLE}.c8002_title   
    

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
    
  - measure: averageg_video_duration
    type: average
    value_format: '#,##0'
    sql: ${avg_video_duration}
    

