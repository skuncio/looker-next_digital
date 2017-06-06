view: t4007_dashboard_yesterday {
  sql_table_name: public.t4007_dashboard_yesterday ;;

  dimension: c4007_action {
    type: string
    sql: ${TABLE}.c4007_action ;;
  }

  dimension: c4007_content {
    type: string
    sql: ${TABLE}.c4007_content ;;
  }

  dimension_group: c4007 {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    sql: ${TABLE}.c4007_date ;;
  }

  dimension: c4007_product {
    type: string
    sql: ${TABLE}.c4007_product ;;
  }

  dimension: c4007_region {
    type: string
    sql: ${TABLE}.c4007_region ;;
  }

  dimension: c4007_total_page_views {
    type: number
    sql: ${TABLE}.c4007_total_page_views ;;
  }

  dimension: c4007_total_unique_users {
    type: number
    sql: ${TABLE}.c4007_total_unique_users ;;
  }

  dimension: c4007_total_video_views {
    type: number
    sql: ${TABLE}.c4007_total_video_views ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
