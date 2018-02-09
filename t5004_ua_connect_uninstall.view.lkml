view: t5004_ua_connect_uninstall {
  sql_table_name: PUBLIC.T5004_UA_CONNECT_UNINSTALL ;;

  dimension: c5004_adid {
    view_label: "Device User"
    type: string
    sql: ${TABLE}.C5004_ADID ;;
  }

  dimension: c5004_app_package_name {
    type: string
    sql: ${TABLE}.C5004_APP_PACKAGE_NAME ;;
  }

  dimension: c5004_app_version {
    type: string
    sql: ${TABLE}.C5004_APP_VERSION ;;
  }

  dimension: c5004_device_type {
    type: string
    sql: ${TABLE}.C5004_DEVICE_TYPE ;;
  }

  dimension: c5004_event_type {
    type: string
    sql: ${TABLE}.C5004_EVENT_TYPE ;;
  }

  dimension: c5004_limited_ad_tracking {
    type: string
    sql: ${TABLE}.C5004_LIMITED_AD_TRACKING ;;
  }

  dimension_group: c5004_occurred_time {
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
    sql: ${TABLE}.C5004_OCCURRED_TIME ;;
  }

  dimension_group: c5004_processed_time {
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
    sql: ${TABLE}.C5004_PROCESSED_TIME ;;
  }

  dimension: c5004_ua_device_attributes {
    type: string
    sql: ${TABLE}.C5004_UA_DEVICE_ATTRIBUTES ;;
  }

  dimension: c5004_ua_device_channel {
    view_label: "Device User"
    type: string
    sql: ${TABLE}.C5004_UA_DEVICE_CHANNEL ;;
  }

  dimension: c5004_OMO_PID {
    view_label: "Device User"
    type: string
    sql: ${TABLE}.C5004_OMO_PID ;;
  }

  measure: count {
    type: count
    drill_fields: [c5004_app_package_name]
  }

  measure: distinct_channel_id {
    view_label: "Device User"
    type: count_distinct
    value_format: "#,##0"
    #  value_format: "[>=1000000]0.0,,\"M\";[>=1000]0.0,\"K\";0"
    sql: ${c5004_ua_device_channel} ;;
  }

  measure: distinct_adid {
    view_label: "Device User"
    type: count_distinct
    value_format: "#,##0"
    #  value_format: "[>=1000000]0.0,,\"M\";[>=1000]0.0,\"K\";0"
    sql: ${c5004_adid} ;;
  }


  measure: distinct_IOS_channel_id {
    view_label: "Device User"
    type: count_distinct
    value_format: "#,##0"
    #  value_format: "[>=1000000]0.0,,\"M\";[>=1000]0.0,\"K\";0"
    sql: ${c5004_ua_device_channel} ;;
    filters: {
      field: c5004_device_type
      value: "IOS"
    }
  }

  measure: distinct_Android_channel_id {
    view_label: "Device User"
    type: count_distinct
    value_format: "#,##0"
    #  value_format: "[>=1000000]0.0,,\"M\";[>=1000]0.0,\"K\";0"
    sql: ${c5004_ua_device_channel} ;;
    filters: {
      field: c5004_device_type
      value: "ANDROID"
    }
  }

  measure: distinct_IOS_adid {
    view_label: "Device User"
    type: count_distinct
    value_format: "#,##0"
    #  value_format: "[>=1000000]0.0,,\"M\";[>=1000]0.0,\"K\";0"
    sql: ${c5004_adid} ;;
    filters: {
      field: c5004_device_type
      value: "IOS"
    }
  }

  measure: distinct_Android_adid {
    view_label: "Device User"
    type: count_distinct
    value_format: "#,##0"
    #  value_format: "[>=1000000]0.0,,\"M\";[>=1000]0.0,\"K\";0"
    sql: ${c5004_adid} ;;
    filters: {
      field: c5004_device_type
      value: "ANDROID"
    }
  }
}
