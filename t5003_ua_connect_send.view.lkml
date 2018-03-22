view: t5003_ua_connect_send {
  sql_table_name: PUBLIC.T5003_UA_CONNECT_SEND ;;

  dimension: c5003_adid {
    view_label: "Device User"
    type: string
    sql: ${TABLE}.C5003_ADID ;;
  }

  dimension: c5003_event_type {
    type: string
    sql: ${TABLE}.C5003_EVENT_TYPE ;;
  }

  dimension: c5003_limited_ad_tracking {
    type: string
    sql: ${TABLE}.C5003_LIMITED_AD_TRACKING ;;
  }

  dimension_group: c5003_occurred_time {
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
    sql: ${TABLE}.C5003_OCCURRED_TIME ;;
  }

  dimension_group: c5003_processed_time {
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
    sql: ${TABLE}.C5003_PROCESSED_TIME ;;
  }

  dimension: c5003_push_id {
    type: string
    sql: ${TABLE}.C5003_PUSH_ID ;;
  }

  dimension: c5003_ua_device_attributes {
    type: string
    sql: ${TABLE}.C5003_UA_DEVICE_ATTRIBUTES ;;
  }

  dimension: c5003_ua_device_channel {
    view_label: "Device User"
    type: string
    sql: ${TABLE}.C5003_UA_DEVICE_CHANNEL ;;
  }

  dimension: c5003_OMO_PID {
    view_label: "Device User"
    type: string
    sql: ${TABLE}.C5003_OMO_PID ;;
  }

  dimension: c5003_device_type {
    type: string
    sql: ${TABLE}.C5003_DEVICE_TYPE ;;
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
    sql: ${c5003_ua_device_channel} ;;
  }

  measure: distinct_adid {
    view_label: "Device User"
    type: count_distinct
    value_format: "#,##0"
    #  value_format: "[>=1000000]0.0,,\"M\";[>=1000]0.0,\"K\";0"
    sql: ${c5003_adid} ;;
  }

  measure: distinct_push_id {
    type: count_distinct
    value_format: "#,##0"
    #  value_format: "[>=1000000]0.0,,\"M\";[>=1000]0.0,\"K\";0"
    sql: ${c5003_push_id} ;;
  }
}
