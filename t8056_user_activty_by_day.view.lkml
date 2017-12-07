view: t8056_user_activty_by_day {
  sql_table_name: PUBLIC.T8056_USER_ACTIVTY_BY_DAY ;;

  dimension: c8056_action {
    type: string
    sql: ${TABLE}.C8056_ACTION ;;
  }

  dimension: c8056_nxtuid {
    type: string
    sql: ${TABLE}.C8056_NXTUID ;;
  }

  dimension: c8056_platform {
    type: string
    sql: ${TABLE}.C8056_PLATFORM ;;
  }

  dimension: c8056_product {
    type: string
    sql: ${TABLE}.C8056_PRODUCT ;;
  }

  dimension: c8056_region {
    type: string
    sql: ${TABLE}.C8056_REGION ;;
  }

  dimension_group: c8056_view {
    group_label: "C8056 View Date"
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
  #  datatype: timestamp
    sql: ${TABLE}.C8056_VIEW_DATETIME ;;
  }

  dimension: c8056_view_date_d {
    group_label: "C8056 View Date"
    sql: TO_DATE(${TABLE}.C8056_VIEW_DATETIME) ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: total_page_views {
    type: count
    filters: {
      field: c8056_action
      value: "PAGEVIEW"
    }
  }

  measure: total_video_views {
    type: count
    filters: {
      field: c8056_action
      value: "VIDEOVIEW"
    }
  }

  measure: distinct_users {
  #  view_label: "User"
    type: count_distinct
  #  value_format: "[>=1000000]0.0,,\"M\";[>=1000]0.0,\"K\";0"
    sql: ${c8056_nxtuid} ;;
  }

  measure: active_days {
    type: count_distinct
    sql: ${c8056_view_date} ;;
  }

}
