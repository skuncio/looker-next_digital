
- view: page_pdt
  derived_table:
    sql_trigger_value: select date(convert_timezone('hkt', getdate()))
    sortkeys: [c8002_datetime]
#   distkey: c8002_cid
    distribution_style: EVEN
    sql: |
      select * from public.t8002_contentview
      where c8002_action like 'PAGE%'
    

  fields:

  - dimension: action
    type: string
    sql: ${TABLE}.c8002_action

  - dimension: adid
    type: string
    sql: ${TABLE}.c8002_adid

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

  - dimension: city
    type: string
    sql: ${TABLE}.c8002_city

  - dimension: country
    type: string
    sql: ${TABLE}.c8002_country

  - dimension: county
    type: string
    sql: ${TABLE}.c8002_county

  - dimension_group: view
    type: time
    timeframes: [time, date, week, month, year, hour_of_day]
    convert_tz: false
    sql: ${TABLE}.c8002_datetime

  - dimension: dcc_id
    type: string
    sql: ${TABLE}.c8002_dcc_id

  - dimension: depth
    type: number
    sql: ${TABLE}.c8002_depth

  - dimension: device
    type: string
    sql: ${TABLE}.c8002_device

  - dimension: did
    type: string
    sql: ${TABLE}.c8002_did

  - dimension: district_id
    type: string
    sql: ${TABLE}.c8002_district_id

  - dimension: dma
    type: string
    sql: ${TABLE}.c8002_dma

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

  - dimension: menu
    type: string
    sql: ${TABLE}.c8002_menu

  - dimension: news
    type: string
    sql: ${TABLE}.c8002_news

  - dimension: ngsid
    type: string
    sql: ${TABLE}.c8002_ngsid

  - dimension: nudid
    type: string
    sql: ${TABLE}.c8002_nudid

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

  - dimension: ref_url
    type: string
    sql: ${TABLE}.c8002_ref_url

  - dimension: region
    type: string
    sql: ${TABLE}.c8002_region

  - dimension: section
    type: string
    sql: ${TABLE}.c8002_section

  - dimension: site
    type: string
    sql: ${TABLE}.c8002_site

  - dimension: state
    type: string
    sql: ${TABLE}.c8002_state

  - dimension: street_id
    type: string
    sql: ${TABLE}.c8002_street_id

  - dimension: subsection
    type: string
    sql: ${TABLE}.c8002_subsection

  - dimension: subsubsection
    type: string
    sql: ${TABLE}.c8002_subsubsection

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

  - dimension: zipcode
    type: string
    sql: ${TABLE}.c8002_zipcode

  - dimension: location
    type: location
    sql_latitude: ${lat}
    sql_longitude: ${lon}

    
  - measure: total_page_views  
    type: count
      
#   - measure: distinct_users
#     type: count_distinct
#     sql: ${user_id}

  sets:
    detail:
      - count

