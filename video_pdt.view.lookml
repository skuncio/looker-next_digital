
- view: video_pdt
  derived_table:
    sql_trigger_value: select date(convert_timezone('est', getdate()))
    sortkeys: [c8002_date]
    distkey: c8002_cid
    sql: |
      select * from public.t8002_contentview
      where c8002_action like 'VIDEO%'
    

  fields:

  - dimension: action
    type: string
    sql: ${TABLE}.c8002_action

  - dimension: browser
    type: string
    sql: ${TABLE}.c8002_br

  - dimension: bv
    type: string
    sql: ${TABLE}.c8002_bv

  - dimension: category
    type: string
    sql: ${TABLE}.c8002_category

  - dimension: channel
    type: string
    sql: ${TABLE}.c8002_channel

  - dimension: cid
    type: string
    sql: ${TABLE}.c8002_cid

  - dimension: content
    type: string
    sql: ${TABLE}.c8002_content

  - dimension_group: view
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.c8002_date

  - dimension: depth
    type: number
    sql: ${TABLE}.c8002_depth

  - dimension: device
    type: string
    sql: ${TABLE}.c8002_device

  - dimension: did
    type: string
    sql: ${TABLE}.c8002_did

  - dimension: edm
    type: string
    sql: ${TABLE}.c8002_edm

  - dimension: gaid
    type: string
    sql: ${TABLE}.c8002_gaid

  - dimension: gigyaid
    type: string
    sql: ${TABLE}.c8002_gigyaid

  - dimension: ip
    type: string
    sql: ${TABLE}.c8002_ip

  - dimension: issueid
    type: string
    sql: ${TABLE}.c8002_issueid

  - dimension: lat
    hidden: true
    type: number
    sql: ${TABLE}.c8002_lat

  - dimension: lon
    hidden: true
    type: number
    sql: ${TABLE}.c8002_lon
    
  - dimension: location
    type: location
    sql_latitude: ${lat}
    sql_longitude: ${lon}

  - dimension: menu
    type: string
    sql: ${TABLE}.c8002_menu

  - dimension: news
    type: string
    sql: ${TABLE}.c8002_news

  - dimension: ngsid
    type: string
    sql: ${TABLE}.c8002_ngsid

  - dimension: nxtu
    type: string
    sql: ${TABLE}.c8002_nxtu

  - dimension: user_id
    type: string
    sql: ${TABLE}.c8002_nxtu_or_did

  - dimension: platform
    type: string
    sql: ${TABLE}.c8002_platform

  - dimension: product
    type: string
    sql: ${TABLE}.c8002_product

  - dimension: region
    type: string
    sql: ${TABLE}.c8002_region

  - dimension: section
    type: string
    sql: ${TABLE}.c8002_section

  - dimension: site
    type: string
    sql: ${TABLE}.c8002_site

  - dimension: subsection
    type: string
    sql: ${TABLE}.c8002_subsection

  - dimension: sz
    type: string
    sql: ${TABLE}.c8002_sz

  - dimension: title
    type: string
    sql: ${TABLE}.c8002_title

  - dimension: ua
    type: string
    sql: ${TABLE}.c8002_ua

  - dimension: video_duration
    type: number
    sql: ${TABLE}.c8002_video_duration

      
  - measure: total_video_views  
    type: count
      
  - measure: average_duration
    type: average
    sql: ${video_duration}

#   - measure: distinct_users
#     type: count_distinct
#     sql: ${user_id}

  sets:
    detail:
      - count

