view: contentview_old {
  sql_table_name: public.t8002_contentview ;;

  dimension: action {
    type: string
    sql: ${TABLE}.c8002_action ;;
  }

  dimension: br {
    type: string
    sql: ${TABLE}.c8002_br ;;
  }

  dimension: bv {
    type: string
    sql: ${TABLE}.c8002_bv ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.c8002_category ;;
  }

  dimension: channel {
    type: string
    sql: ${TABLE}.c8002_channel ;;
  }

  dimension: cid {
    type: string
    sql: ${TABLE}.c8002_cid ;;
  }

  dimension: content {
    type: string
    sql: ${TABLE}.c8002_content ;;
  }

  dimension_group: view {
    type: time
    timeframes: [date, week, month, year]
    convert_tz: no
    sql: ${TABLE}.c8002_date ;;
  }

  dimension: depth {
    type: number
    sql: ${TABLE}.c8002_depth ;;
  }

  dimension: device {
    type: string
    sql: ${TABLE}.c8002_device ;;
  }

  dimension: did {
    type: string
    sql: ${TABLE}.c8002_did ;;
  }

  dimension: edm {
    type: string
    sql: ${TABLE}.c8002_edm ;;
  }

  dimension: gaid {
    type: string
    sql: ${TABLE}.c8002_gaid ;;
  }

  dimension: gigyaid {
    type: string
    sql: ${TABLE}.c8002_gigyaid ;;
  }

  dimension: ip {
    type: string
    sql: ${TABLE}.c8002_ip ;;
  }

  dimension: issueid {
    type: string
    sql: ${TABLE}.c8002_issueid ;;
  }

  dimension: lat {
    type: number
    sql: ${TABLE}.c8002_lat ;;
  }

  dimension: lon {
    type: number
    sql: ${TABLE}.c8002_lon ;;
  }

  dimension: menu {
    type: string
    sql: ${TABLE}.c8002_menu ;;
  }

  dimension: news {
    type: string
    sql: ${TABLE}.c8002_news ;;
  }

  dimension: ngsid {
    type: string
    sql: ${TABLE}.c8002_ngsid ;;
  }

  dimension: nxtu {
    type: string
    sql: ${TABLE}.c8002_nxtu ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.c8002_nxtu_or_did ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}.c8002_platform ;;
  }

  dimension: product {
    type: string
    sql: ${TABLE}.c8002_product ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.c8002_region ;;
  }

  dimension: section {
    type: string
    sql: ${TABLE}.c8002_section ;;
  }

  dimension: site {
    type: string
    sql: ${TABLE}.c8002_site ;;
  }

  dimension: subsection {
    type: string
    sql: ${TABLE}.c8002_subsection ;;
  }

  dimension: sz {
    type: string
    sql: ${TABLE}.c8002_sz ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.c8002_title ;;
  }

  dimension: ua {
    type: string
    sql: ${TABLE}.c8002_ua ;;
  }

  dimension: video_duration {
    type: number
    sql: ${TABLE}.c8002_video_duration ;;
  }

  dimension: view_location {
    type: location
    sql_latitude: ${lat} ;;
    sql_longitude: ${lon} ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: total_page_views {
    type: count

    filters: {
      field: action
      value: "PAGEVIEW"
    }
  }

  measure: total_video_views {
    type: count

    filters: {
      field: action
      value: "VIDEOVIEW"
    }
  }

  measure: average_duration {
    type: average
    sql: ${video_duration} ;;
  }

  measure: distinct_users {
    type: count_distinct
    sql: ${user_id} ;;
  }

  measure: distinct_content {
    type: count_distinct
    sql: ${cid} ;;
  }
}
