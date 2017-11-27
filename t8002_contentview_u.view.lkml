view: t8002_contentview {
  sql_table_name: public.t8002_contentview ;;

  dimension: c8002_action {
    type: string
    sql: ${TABLE}.c8002_action ;;
  }

  dimension: c8002_adid {
    type: string
    sql: ${TABLE}.c8002_adid ;;
  }

  dimension: c8002_app_version {
    type: string
    sql: ${TABLE}.c8002_app_version ;;
  }

  dimension: c8002_artid {
    type: string
    sql: ${TABLE}.c8002_artid ;;
  }

  dimension: c8002_auth {
    type: string
    sql: ${TABLE}.c8002_auth ;;
  }

  dimension: c8002_auto {
    type: string
    sql: ${TABLE}.c8002_auto ;;
  }

  dimension: c8002_battery {
    type: number
    sql: ${TABLE}.c8002_battery ;;
  }

  dimension: c8002_beacon_id {
    type: string
    sql: ${TABLE}.c8002_beacon_id ;;
  }

  dimension: c8002_beacon_loc {
    type: string
    sql: ${TABLE}.c8002_beacon_loc ;;
  }

  dimension: c8002_bluetooth {
    type: string
    sql: ${TABLE}.c8002_bluetooth ;;
  }

  dimension: c8002_br {
    type: string
    sql: ${TABLE}.c8002_br ;;
  }

  dimension: c8002_bv {
    type: string
    sql: ${TABLE}.c8002_bv ;;
  }

  dimension: c8002_category {
    type: string
    sql: ${TABLE}.c8002_category ;;
  }

  dimension: c8002_channel {
    type: string
    sql: ${TABLE}.c8002_channel ;;
  }

  dimension: c8002_cid {
    type: string
    sql: ${TABLE}.c8002_cid ;;
  }

  dimension: c8002_city {
    type: string
    sql: ${TABLE}.c8002_city ;;
  }

  dimension: c8002_content {
    type: string
    sql: ${TABLE}.c8002_content ;;
  }

  dimension: c8002_country {
    type: string
    sql: ${TABLE}.c8002_country ;;
  }

  dimension: c8002_county {
    type: string
    sql: ${TABLE}.c8002_county ;;
  }

  dimension_group: c8002_datetime {
    group_label: "c8002_datetime"
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
    sql: ${TABLE}.c8002_datetime ;;
  }

  dimension: c8002_datetime_date_d {
    group_label: "c8002_datetime"
    sql: TO_DATE(${TABLE}.c8002_datetime) ;;
  }

  dimension: c8002_datetime_weekday {
    sql:
      CASE
         when ${c8002_datetime_day_of_week_index} = 6 then 'Weekend'
         when ${c8002_datetime_day_of_week_index} = 0 then 'Weekday'
         when ${c8002_datetime_day_of_week_index} = 1 then 'Weekday'
         when ${c8002_datetime_day_of_week_index} = 2 then 'Weekday'
         when ${c8002_datetime_day_of_week_index} = 3 then 'Weekday'
         when ${c8002_datetime_day_of_week_index} = 4 then 'Weekday'
         when ${c8002_datetime_day_of_week_index} = 5 then 'Weekend'
      END ;;
  }

  dimension: c8002_dcc_id {
    type: string
    sql: ${TABLE}.c8002_dcc_id ;;
  }

  dimension: c8002_depth {
    type: number
    sql: ${TABLE}.c8002_depth ;;
  }

  dimension: c8002_device {
    type: string
    sql: ${TABLE}.c8002_device ;;
  }

  dimension: c8002_did {
    type: string
    sql: ${TABLE}.c8002_did ;;
  }

  dimension: c8002_district_id {
    type: string
    sql: ${TABLE}.c8002_district_id ;;
  }

  dimension: c8002_dma {
    type: string
    sql: ${TABLE}.c8002_dma ;;
  }

  dimension: c8002_edm {
    type: string
    sql: ${TABLE}.c8002_edm ;;
  }

  dimension: c8002_gaid {
    type: string
    sql: ${TABLE}.c8002_gaid ;;
  }

  dimension: c8002_gigyaid {
    type: string
    sql: ${TABLE}.c8002_gigyaid ;;
  }

  dimension: c8002_ip {
    type: string
    sql: ${TABLE}.c8002_ip ;;
  }

  dimension: c8002_issueid {
    type: string
    sql: ${TABLE}.c8002_issueid ;;
  }

  dimension: c8002_keyword {
    type: string
    sql: ${TABLE}.c8002_keyword ;;
  }

  dimension: c8002_language {
    type: string
    sql: ${TABLE}.c8002_language ;;
  }

  dimension: c8002_lat {
    type: number
    sql: ${TABLE}.c8002_lat ;;
  }

  dimension: c8002_limit_ad_track {
    type: string
    sql: ${TABLE}.c8002_limit_ad_track ;;
  }

  dimension: c8002_lon {
    type: number
    sql: ${TABLE}.c8002_lon ;;
  }

  dimension: c8002_menu {
    type: string
    sql: ${TABLE}.c8002_menu ;;
  }

  dimension: c8002_news {
    type: string
    sql: ${TABLE}.c8002_news ;;
  }

  dimension: c8002_ngsid {
    type: string
    sql: ${TABLE}.c8002_ngsid ;;
  }

  dimension: c8002_nudid {
    type: string
    sql: ${TABLE}.c8002_nudid ;;
  }

  dimension: c8002_nxtu {
    type: string
    sql: ${TABLE}.c8002_nxtu ;;
  }

  dimension: c8002_nxtu_or_did {
    type: string
    sql: ${TABLE}.c8002_nxtu_or_did ;;
  }

  dimension: c8002_platform {
    type: string
    sql: ${TABLE}.c8002_platform ;;
  }

  dimension: c8002_postcode {
    type: string
    sql: ${TABLE}.c8002_postcode ;;
  }

  dimension: c8002_product {
    type: string
    sql: ${TABLE}.c8002_product ;;
  }

  dimension: c8002_ref_url {
    type: string
    sql: ${TABLE}.c8002_ref_url ;;
  }

  dimension: c8002_region {
    type: string
    sql: ${TABLE}.c8002_region ;;
  }

  dimension: c8002_section {
    type: string
    sql: ${TABLE}.c8002_section ;;
  }

  dimension: c8002_site {
    type: string
    sql: ${TABLE}.c8002_site ;;
  }

  dimension: c8002_source {
    type: string
    sql: ${TABLE}.c8002_source ;;
  }

  dimension: c8002_state {
    type: string
    sql: ${TABLE}.c8002_state ;;
  }

  dimension: c8002_street_id {
    type: string
    sql: ${TABLE}.c8002_street_id ;;
  }

  dimension: c8002_subsection {
    type: string
    sql: ${TABLE}.c8002_subsection ;;
  }

  dimension: c8002_subsubsection {
    type: string
    sql: ${TABLE}.c8002_subsubsection ;;
  }

  dimension: c8002_sz {
    type: string
    sql: ${TABLE}.c8002_sz ;;
  }

  dimension: c8002_title {
    type: string
    sql: ${TABLE}.c8002_title ;;
  }

  dimension: c8002_ua {
    type: string
    sql: ${TABLE}.c8002_ua ;;
  }

  dimension: c8002_view_duration {
    alias: [c8002_video_duration]
    type: number
    sql: ${TABLE}.c8002_view_duration ;;
  }

  dimension: c8002_wifi {
    type: string
    sql: ${TABLE}.c8002_wifi ;;
  }

  dimension: C8002_abt {
    type: string
    sql: ${TABLE}.c8002_abt ;;
  }

  dimension: C8002_omo_accid {
    type: string
    sql: ${TABLE}.c8002_omo_accid ;;
  }

  dimension: C8002_omo_pid {
    type: string
    sql: ${TABLE}.c8002_omo_pid ;;
  }

  dimension:  C8002_fbid {
 #   view_label: "User"
    type: string
    sql: ${TABLE}.c8002_fbid ;;
  }

  dimension: c8002_ads {
 #   view_label: "User"
    type: string
    sql: ${TABLE}.c8002_ads ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }


  measure: total_page_views {
    type: count
    filters: {
      field: c8002_action
      value: "PAGEVIEW"
    }
  }

  measure: total_video_views {
    type: count
    filters: {
      field: c8002_action
      value: "VIDEOVIEW"
    }
  }

  measure: average_video_duration {
    alias: [average_duration]
    type: average
    sql: ${c8002_view_duration} ;;
    filters: {
      field: c8002_action
      value: "VIDEOVIEW"
    }
  }

  measure: average_page_duration {
    type: average
    sql: ${c8002_view_duration} ;;
    filters: {
      field: c8002_action
      value: "PAGEVIEW"
    }
  }

  measure: sum_video_duration {
    type: sum
    sql: ${c8002_view_duration} ;;
    filters: {
      field: c8002_action
      value: "VIDEOVIEW"
    }
  }

  measure: sum_page_duration {
    type: sum
    sql: ${c8002_view_duration} ;;
    filters: {
      field: c8002_action
      value: "PAGEVIEW"
    }
  }

  measure: distinct_users {
    view_label: "User"
    type: count_distinct
    value_format: "[>=1000000]0.0,,\"M\";[>=1000]0.0,\"K\";0"
    sql: ${c8002_nxtu_or_did} ;;
#    approximate: yes
  }

  measure: distinct_content {
    type: count_distinct
    value_format: "[>=1000000]0.0,,\"M\";[>=1000]0.0,\"K\";0"
    sql: ${c8002_cid} ;;
#    approximate: yes
  }
}
