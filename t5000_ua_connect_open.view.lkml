view: t5000_ua_connect_open {
  sql_table_name: PUBLIC.T5000_UA_CONNECT_OPEN ;;

  dimension: c5000_adid {
    view_label: "Device User"
    type: string
    sql: ${TABLE}.C5000_ADID ;;
  }

  dimension: c5000_device_type {
    type: string
    sql: ${TABLE}.C5000_DEVICE_TYPE ;;
  }

  dimension: c5000_event_type {
    type: string
    sql: ${TABLE}.C5000_EVENT_TYPE ;;
  }

  dimension: c5000_last_delivered_push_id {
    type: string
    sql: ${TABLE}.C5000_LAST_DELIVERED_PUSH_ID ;;
  }

  dimension_group: c5000_last_delivered {
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
    sql: ${TABLE}.C5000_LAST_DELIVERED_TIME ;;
  }

  dimension: c5000_limited_ad_tracking {
    type: string
    sql: ${TABLE}.C5000_LIMITED_AD_TRACKING ;;
  }

  dimension_group: c5000_occurred {
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
    sql: ${TABLE}.C5000_OCCURRED_TIME ;;
  }

  dimension_group: c5000_processed {
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
    sql: ${TABLE}.C5000_PROCESSED_TIME ;;
  }

  dimension: c5000_triggering_push_id {
    type: string
    sql: ${TABLE}.C5000_TRIGGERING_PUSH_ID ;;
  }

  dimension_group: c5000_triggering_push {
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
    sql: ${TABLE}.C5000_TRIGGERING_PUSH_TIME ;;
  }

  dimension: c5000_ua_device_attributes {
    type: string
    sql: ${TABLE}.C5000_UA_DEVICE_ATTRIBUTES ;;
  }

  dimension: c5000_ua_device_channel {
    view_label: "Device User"
    type: string
    sql: ${TABLE}.C5000_UA_DEVICE_CHANNEL ;;
  }

  dimension: c5000_OMO_PID {
    view_label: "Device User"
    type: string
    sql: ${TABLE}.C5000_OMO_PID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: distinct_channel_id {
    view_label: "Device User"
    type: count_distinct
    value_format: "#,##0"
    #  value_format: "[>=1000000]0.0,,\"M\";[>=1000]0.0,\"K\";0"
    sql: ${c5000_ua_device_channel} ;;
  }

  measure: distinct_adid {
    view_label: "Device User"
    type: count_distinct
    value_format: "#,##0"
    #  value_format: "[>=1000000]0.0,,\"M\";[>=1000]0.0,\"K\";0"
    sql: ${c5000_adid} ;;
  }

  measure: distinct_IOS_channel_id {
    view_label: "Device User"
    type: count_distinct
    value_format: "#,##0"
    #  value_format: "[>=1000000]0.0,,\"M\";[>=1000]0.0,\"K\";0"
    sql: ${c5000_ua_device_channel} ;;
    filters: {
      field: c5000_device_type
      value: "IOS"
    }
  }

  measure: distinct_Android_channel_id {
    view_label: "Device User"
    type: count_distinct
    value_format: "#,##0"
    #  value_format: "[>=1000000]0.0,,\"M\";[>=1000]0.0,\"K\";0"
    sql: ${c5000_ua_device_channel} ;;
    filters: {
      field: c5000_device_type
      value: "ANDROID"
    }
  }

  measure: distinct_IOS_adid {
    view_label: "Device User"
    type: count_distinct
    value_format: "#,##0"
    #  value_format: "[>=1000000]0.0,,\"M\";[>=1000]0.0,\"K\";0"
    sql: ${c5000_adid} ;;
    filters: {
      field: c5000_device_type
      value: "IOS"
    }
  }

  measure: distinct_Android_adid {
    view_label: "Device User"
    type: count_distinct
    value_format: "#,##0"
    #  value_format: "[>=1000000]0.0,,\"M\";[>=1000]0.0,\"K\";0"
    sql: ${c5000_adid} ;;
    filters: {
      field: c5000_device_type
      value: "ANDROID"
    }
  }
}
