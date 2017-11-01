view: t8002_contentview_curr_day {
  sql_table_name: PUBLIC.T8002_CONTENTVIEW_CURR_DAY ;;

  dimension: abt {
    type: string
    sql: ${TABLE}.C8002_ABT ;;
  }

  dimension: view_type {
    description: "PAGEVIEW or VIDEOVIEW"
    alias: [action]
    type: string
    sql: ${TABLE}.C8002_ACTION ;;
  }

  dimension: adid {
    view_label: "User"
    type: string
    sql: ${TABLE}.C8002_ADID ;;
  }

  dimension: ads {
    view_label: "User"
    type: string
    sql: ${TABLE}.c8002_ads ;;
  }

  dimension: app_version {
    view_label: "User"
    type: string
    sql: ${TABLE}.C8002_APP_VERSION ;;
  }

  dimension: artid {
    type: string
    sql: ${TABLE}.C8002_ARTID ;;
  }

  dimension: author {
    type: string
    sql: ${TABLE}.C8002_AUTH ;;
  }

  dimension: auto_play {
    type: string
    sql: ${TABLE}.C8002_AUTO ;;
  }

  dimension: _battery {
    view_label: "User"
    type: number
    sql: ${TABLE}.C8002_BATTERY ;;
  }

  dimension: beacon_id {
    view_label: "Location"
    type: string
    sql: ${TABLE}.C8002_BEACON_ID ;;
  }

  dimension: _beacon_loc {
    view_label: "Location"
    type: string
    sql: ${TABLE}.C8002_BEACON_LOC ;;
  }

  dimension: bluetooth {
    view_label: "User"
    type: string
    sql: ${TABLE}.C8002_BLUETOOTH ;;
  }

  dimension: user_browser {
    view_label: "User"
    type: string
    sql: ${TABLE}.C8002_BR ;;
  }

  dimension: browser_version {
    view_label: "User"
    type: string
    sql: ${TABLE}.C8002_BV ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.C8002_CATEGORY ;;
  }

  dimension: channel {
    type: string
    sql: ${TABLE}.C8002_CHANNEL ;;
  }

  dimension: cid {
    type: string
    sql: ${TABLE}.C8002_CID ;;
  }

  dimension: city {
    view_label: "Location"
    type: string
    sql: ${TABLE}.C8002_CITY ;;
  }

  dimension: content_type {
    type: string
    sql: ${TABLE}.C8002_CONTENT ;;
  }

  dimension: c8002_country {
    view_label: "Location"
    type: string
    sql: ${TABLE}.C8002_COUNTRY ;;
  }

  dimension: c8002_county {
    view_label: "Location"
    type: string
    sql: ${TABLE}.C8002_COUNTY ;;
  }

  dimension_group: view {
    group_label: "View Date"
    type: time
    timeframes: [
      time,
      date,
      day_of_week,
      day_of_week_index,
      week,
      month,
      year,
      hour_of_day
    ]
    convert_tz: no
    sql: ${TABLE}.C8002_DATETIME ;;
  }
  dimension: view_date_d {
    group_label: "View Date"
    sql: TO_DATE(${TABLE}.c8002_datetime) ;;
  }

  dimension: view_weekday {
    sql:
      CASE
         when ${view_day_of_week_index} = 6 then 'Weekend'
         when ${view_day_of_week_index} = 0 then 'Weekday'
         when ${view_day_of_week_index} = 1 then 'Weekday'
         when ${view_day_of_week_index} = 2 then 'Weekday'
         when ${view_day_of_week_index} = 3 then 'Weekday'
         when ${view_day_of_week_index} = 4 then 'Weekday'
         when ${view_day_of_week_index} = 5 then 'Weekend'
      END ;;
  }



  dimension: dcc_id {
    view_label: "Location"
    type: string
    sql: ${TABLE}.C8002_DCC_ID ;;
  }

  dimension: depth {
    type: number
    sql: ${TABLE}.C8002_DEPTH ;;
  }

  dimension: user_device {
    view_label: "User"
    type: string
    sql: ${TABLE}.C8002_DEVICE ;;
  }

  dimension: device_id {
    view_label: "User"
    type: string
    sql: ${TABLE}.C8002_DID ;;
  }

  dimension: district_id {
    view_label: "Location"
    type: string
    sql: ${TABLE}.C8002_DISTRICT_ID ;;
  }

  dimension: dma {
    view_label: "Location"
    type: string
    sql: ${TABLE}.C8002_DMA ;;
  }

  dimension: edm {
    type: string
    sql: ${TABLE}.C8002_EDM ;;
  }

  dimension: fbid {
    view_label: "User"
    type: string
    sql: ${TABLE}.C8002_FBID ;;
  }

  dimension: gaid {
    view_label: "User"
    type: string
    sql: ${TABLE}.C8002_GAID ;;
  }

  dimension: gigyaid {
    view_label: "User"
    type: string
    sql: ${TABLE}.C8002_GIGYAID ;;
  }

  dimension: ip {
    view_label: "Location"
    type: string
    sql: ${TABLE}.C8002_IP ;;
  }

  dimension: issueid {
    type: number
    value_format: "0"
    sql: ${TABLE}.C8002_ISSUEID ;;
  }

  dimension: keyword {
    type: string
    sql: ${TABLE}.C8002_KEYWORD ;;
  }

  dimension: language {
    type: string
    sql: ${TABLE}.C8002_LANGUAGE ;;
  }

  dimension: lat {
    hidden: yes
    view_label: "Location"
    type: number
    sql: ${TABLE}.C8002_LAT ;;
  }

  dimension: limit_ad_track {
    view_label: "User"
    type: string
    sql: ${TABLE}.C8002_LIMIT_AD_TRACK ;;
  }

  dimension: lon {
    hidden: yes
    view_label: "Location"
    type: number
    sql: ${TABLE}.C8002_LON ;;
  }

  dimension: menu {
    type: string
    sql: ${TABLE}.C8002_MENU ;;
  }

  dimension: news {
    type: string
    sql: ${TABLE}.C8002_NEWS ;;
  }

  dimension: ngsid {
    view_label: "User"
    type: string
    sql: ${TABLE}.C8002_NGSID ;;
  }

  dimension: nudid {
    view_label: "User"
    type: string
    sql: ${TABLE}.C8002_NUDID ;;
  }

  dimension: nxtu {
    view_label: "User"
    type: string
    sql: ${TABLE}.C8002_NXTU ;;
  }

  dimension: user_id {
    view_label: "User"
    type: string
    sql: ${TABLE}.C8002_NXTU_OR_DID ;;
  }

  dimension: omo_accid {
    view_label: "User"
    type: string
    sql: ${TABLE}.C8002_OMO_ACCID ;;
  }

  dimension: omo_pid {
    view_label: "User"
    type: string
    sql: ${TABLE}.C8002_OMO_PID ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}.C8002_PLATFORM ;;
  }

  dimension: postcode {
    view_label: "Location"
    type: string
    sql: ${TABLE}.C8002_POSTCODE ;;
  }

  dimension: product {
    type: string
    sql: ${TABLE}.C8002_PRODUCT ;;
  }

  dimension: ref_url {
    type: string
    sql: ${TABLE}.C8002_REF_URL ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.C8002_REGION ;;
  }

  dimension: section {
    type: string
    sql: ${TABLE}.C8002_SECTION ;;
  }

  dimension: site {
    type: string
    sql: ${TABLE}.C8002_SITE ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.C8002_SOURCE ;;
  }

  dimension: state {
    view_label: "Location"
    type: string
    sql: ${TABLE}.C8002_STATE ;;
  }

  dimension: street_id {
    view_label: "Location"
    type: string
    sql: ${TABLE}.C8002_STREET_ID ;;
  }

  dimension: subsection {
    type: string
    sql: ${TABLE}.C8002_SUBSECTION ;;
  }

  dimension: subsubsection {
    type: string
    sql: ${TABLE}.C8002_SUBSUBSECTION ;;
  }

  dimension: screen_size {
    view_label: "User"
    type: string
    sql: ${TABLE}.C8002_SZ ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.C8002_TITLE ;;
  }

  dimension: user_agent {
    view_label: "User"
    type: string
    sql: ${TABLE}.C8002_UA ;;
  }

  dimension: view_duration {
    alias: [video_duration]
    type: number
    sql: ${TABLE}.C8002_VIEW_DURATION ;;
  }

  dimension: wifi {
    view_label: "User"
    type: string
    sql: ${TABLE}.C8002_WIFI ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: total_page_views {
    type: count
    filters: {
      field: view_type
      value: "PAGEVIEW"
    }
  }

  measure: total_video_views {
    type: count
    filters: {
      field: view_type
      value: "VIDEOVIEW"
    }
  }

  measure: average_video_duration {
    alias: [average_duration]
    type: average
    sql: ${view_duration} ;;
    filters: {
      field: view_type
      value: "VIDEOVIEW"
    }
  }

  measure: average_page_duration {
    type: average
    sql: ${view_duration} ;;
    filters: {
      field: view_type
      value: "PAGEVIEW"
    }
  }

  measure: sum_video_duration {
    type: sum
    sql: ${view_duration} ;;
    filters: {
      field: view_type
      value: "VIDEOVIEW"
    }
  }

  measure: sum_page_duration {
    type: sum
    sql: ${view_duration} ;;
    filters: {
      field: view_type
      value: "PAGEVIEW"
    }
  }

  measure: distinct_users {
    view_label: "User"
    type: count_distinct
    value_format: "[>=1000000]0.0,,\"M\";[>=1000]0.0,\"K\";0"
    sql: ${user_id} ;;
#    approximate: yes
  }

  measure: distinct_content {
    type: count_distinct
    value_format: "[>=1000000]0.0,,\"M\";[>=1000]0.0,\"K\";0"
    sql: ${cid} ;;
#    approximate: yes
  }
}
