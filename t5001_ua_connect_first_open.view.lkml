view: t5001_ua_connect_first_open {
  sql_table_name: PUBLIC.T5001_UA_CONNECT_FIRST_OPEN ;;

  dimension: c5001_adid {
    view_label: "Device User"
    type: string
    sql: ${TABLE}.C5001_ADID ;;
  }

  dimension: c5001_app_package_name {
    type: string
    sql: ${TABLE}.C5001_APP_PACKAGE_NAME ;;
  }

  dimension: c5001_app_version {
    type: string
    sql: ${TABLE}.C5001_APP_VERSION ;;
  }

  dimension: c5001_device_type {
    type: string
    sql: ${TABLE}.C5001_DEVICE_TYPE ;;
  }

  dimension: c5001_event_type {
    type: string
    sql: ${TABLE}.C5001_EVENT_TYPE ;;
  }

  dimension: c5001_limited_ad_tracking {
    type: string
    sql: ${TABLE}.C5001_LIMITED_AD_TRACKING ;;
  }

  dimension_group: c5001_occurred {
    type: time
    timeframes: [
      raw,
      date,
      hour_of_day,
      time,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.C5001_OCCURRED_TIME ;;
  }

  dimension_group: c5001_processed {
    type: time
    timeframes: [
      raw,
      date,
      hour_of_day,
      time,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.C5001_PROCESSED_TIME ;;
  }

  dimension: c5001_ua_device_attributes {
    type: string
    sql: ${TABLE}.C5001_UA_DEVICE_ATTRIBUTES ;;
  }

  dimension: c5001_ua_device_channel {
    view_label: "Device User"
    type: string
    sql: ${TABLE}.C5001_UA_DEVICE_CHANNEL ;;
  }

  dimension: c5001_OMO_PID {
    view_label: "Device User"
    type: string
    sql: ${TABLE}.C5001_OMO_PID ;;
  }

  measure: count {
    type: count
    drill_fields: [c5001_app_package_name]
  }

  measure: distinct_channel_id {
    view_label: "Device User"
    type: count_distinct
    value_format: "#,##0"
    #  value_format: "[>=1000000]0.0,,\"M\";[>=1000]0.0,\"K\";0"
    sql: ${c5001_ua_device_channel} ;;
  }

  measure: distinct_adid {
    view_label: "Device User"
    type: count_distinct
    value_format: "#,##0"
    #  value_format: "[>=1000000]0.0,,\"M\";[>=1000]0.0,\"K\";0"
    sql: ${c5001_adid} ;;
  }
}
