- view: contentview
  sql_table_name: public.t8002_contentview
  fields:

  - dimension: view_type
    description: 'PAGEVIEW or VIDEOVIEW'
    alias: [action]
    type: string
    sql: ${TABLE}.c8002_action

#   - dimension: adid
#     type: string
#     sql: ${TABLE}.c8002_adid

  - dimension: app_version
    type: string
    sql: ${TABLE}.c8002_app_version

  - dimension: c8002_artid
    type: string
    sql: ${TABLE}.c8002_artid

#  - dimension: browser
#    view_label: User
#    type: string
#    sql: ${TABLE}.c8002_br

#   - dimension: bv
#     type: string
#     sql: ${TABLE}.c8002_bv

  - dimension: category
    type: string
    sql: ${TABLE}.c8002_category

  - dimension: channel
    type: string
    sql: ${TABLE}.c8002_channel

  - dimension: cid
#    hidden: true
    type: string
    sql: ${TABLE}.c8002_cid

  - dimension: city
    view_label: Location
    type: string
    sql: ${TABLE}.c8002_city

  - dimension: country
    view_label: Location
    type: string
    sql: ${TABLE}.c8002_country

  - dimension: county
    view_label: Location
    type: string
    sql: ${TABLE}.c8002_county

  - dimension_group: view
    type: time
    timeframes: [time, date, week, month, year, hour_of_day]
    convert_tz: false
    sql: ${TABLE}.c8002_datetime

  - dimension: dcc_id
    view_label: Location
    type: string
    sql: ${TABLE}.c8002_dcc_id

  - dimension: depth
    type: number
    sql: ${TABLE}.c8002_depth

  - dimension: device
    view_label: User
    type: string
    sql: ${TABLE}.c8002_device

#   - dimension: did
#     type: string
#     sql: ${TABLE}.c8002_did

  - dimension: district_id
    view_label: Location
    type: string
    sql: ${TABLE}.c8002_district_id

  - dimension: dma
    view_label: Location
    type: string
    sql: ${TABLE}.c8002_dma

  - dimension: edm
    type: string
    sql: ${TABLE}.c8002_edm

#   - dimension: gaid
#     view_label: User
#     type: string
#     sql: ${TABLE}.c8002_gaid

#   - dimension: gigyaid
#     view_label: User
#     type: string
#     sql: ${TABLE}.c8002_gigyaid

  - dimension: ip
    view_label: Location
    type: string
    sql: ${TABLE}.c8002_ip

  - dimension: issueid
    type: string
    sql: ${TABLE}.c8002_issueid
   
  - dimension: keyword
    type: string
    sql: ${TABLE}.c8002_keyword

  - dimension: language
    type: string
    sql: ${TABLE}.c8002_language

  - dimension: lat
    hidden: true
    type: number
    sql: ${TABLE}.c8002_lat

  - dimension: lon
    hidden: true
    type: number
    sql: ${TABLE}.c8002_lon

  - dimension: menu
    type: string
    sql: ${TABLE}.c8002_menu

  - dimension: news
    type: string
    sql: ${TABLE}.c8002_news

#   - dimension: ngsid
#     type: string
#     sql: ${TABLE}.c8002_ngsid
# 
#   - dimension: nudid
#     type: string
#     sql: ${TABLE}.c8002_nudid
# 
#   - dimension: nxtu
#     type: string
#     sql: ${TABLE}.c8002_nxtu

  - dimension: user_id
    view_label: User
    type: string
    sql: ${TABLE}.c8002_nxtu_or_did

  - dimension: platform
#    view_label: User
    type: string
    sql: ${TABLE}.c8002_platform

  - dimension: product
    type: string
    sql: ${TABLE}.c8002_product

  - dimension: referring_url
#    view_label: User
    alias: [ref_url]
    type: string
    sql: ${TABLE}.c8002_ref_url

  - dimension: region
#    view_label: Location
    type: string
    sql: ${TABLE}.c8002_region

  - dimension: section
    type: string
    sql: ${TABLE}.c8002_section
    
  - dimension: source
    type: string
    sql: ${TABLE}.c8002_source

  - dimension: site
    type: string
    sql: ${TABLE}.c8002_site

  - dimension: state
    view_label: Location
    type: string
    sql: ${TABLE}.c8002_state

  - dimension: street_id
    view_label: Location
    type: string
    sql: ${TABLE}.c8002_street_id

  - dimension: subsection
    type: string
    sql: ${TABLE}.c8002_subsection

#  - dimension: subsubsection
#    type: string
#    sql: ${TABLE}.c8002_subsubsection

#   - dimension: sz
#     type: string
#     sql: ${TABLE}.c8002_sz

  - dimension: title
    type: string
    sql: ${TABLE}.c8002_title

  - dimension: ua
    type: string
    sql: ${TABLE}.c8002_ua

  - dimension: video_duration
    type: number
    sql: ${TABLE}.c8002_video_duration

  - dimension: zipcode
    view_label: Location
    type: string
    sql: ${TABLE}.c8002_zipcode

  - dimension: latitude_longitude
    alias: [view_location]
    view_label: Location
    type: location
    sql_latitude: ${lat}
    sql_longitude: ${lon}

  - measure: count
    type: count
    drill_fields: []
    
  - measure: total_page_views  
    type: count
    filters:
      view_type: 'PAGEVIEW'
      
  - measure: total_video_views  
    type: count
    filters:
      view_type: 'VIDEOVIEW'
      
  - measure: average_duration
    type: average
    sql: ${video_duration}
    
#  - measure: distinct_users
#    view_label: User
#    type: count_distinct
#    sql: ${user_id}  
    
#  - measure: distinct_content
#    type: count_distinct
#    sql: ${cid}   

