view: t5006_ua_connect_location {
  sql_table_name: PUBLIC.T5006_UA_CONNECT_LOCATION ;;

  dimension: c5006_adid {
    view_label: "Device User"
    type: string
    sql: ${TABLE}.C5006_ADID ;;
  }

  dimension: c5006_app_package_name {
    type: string
    sql: ${TABLE}.C5006_APP_PACKAGE_NAME ;;
  }

  dimension: c5006_app_version {
    type: string
    sql: ${TABLE}.C5006_APP_VERSION ;;
  }

  dimension: c5006_device_type {
    type: string
    sql: ${TABLE}.C5006_DEVICE_TYPE ;;
  }

  dimension: c5006_event_type {
    type: string
    sql: ${TABLE}.C5006_EVENT_TYPE ;;
  }

  dimension: c5006_foreground {
    type: string
    sql: ${TABLE}.C5006_FOREGROUND ;;
  }

  dimension: c5006_latitude {
    view_label: "Location"
    type: string
    sql: ${TABLE}.C5006_LATITUDE ;;
  }

  dimension: c5006_limited_ad_tracking {
    type: string
    sql: ${TABLE}.C5006_LIMITED_AD_TRACKING ;;
  }

  dimension: c5006_longitude {
    view_label: "Location"
    type: string
    sql: ${TABLE}.C5006_LONGITUDE ;;
  }

  dimension_group: c5006_occurred_time {
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
    sql: ${TABLE}.C5006_OCCURRED_TIME ;;
  }

  dimension_group: c5006_processed_time {
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
    sql: ${TABLE}.C5006_PROCESSED_TIME ;;
  }

  dimension: c5006_ua_device_attributes {
    type: string
    sql: ${TABLE}.C5006_UA_DEVICE_ATTRIBUTES ;;
  }

  dimension: c5006_ua_device_channel {
    view_label: "Device User"
    type: string
    sql: ${TABLE}.C5006_UA_DEVICE_CHANNEL ;;
  }

  dimension: c5006_OMO_PID {
    view_label: "Device User"
    type: string
    sql: ${TABLE}.C5006_OMO_PID ;;
  }

  dimension: latitude_longitude {
    view_label: "Location"
    type: location
    sql_latitude: ${c5006_latitude} ;;
    sql_longitude: ${c5006_longitude} ;;
  }

  measure: count {
    type: count
    drill_fields: [c5006_app_package_name]
  }

  measure: distinct_channel_id {
    view_label: "Device User"
    type: count_distinct
    value_format: "#,##0"
    #  value_format: "[>=1000000]0.0,,\"M\";[>=1000]0.0,\"K\";0"
    sql: ${c5006_ua_device_channel} ;;
  }

  measure: distinct_adid {
    view_label: "Device User"
    type: count_distinct
    value_format: "#,##0"
    #  value_format: "[>=1000000]0.0,,\"M\";[>=1000]0.0,\"K\";0"
    sql: ${c5006_adid}_adid} ;;
  }

}
