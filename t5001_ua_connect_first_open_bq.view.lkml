view: t5001_ua_connect_first_open_bq {
  sql_table_name: UA_CONNECT.t5001_ua_connect_first_open ;;

  dimension: c5001_adid {
    view_label: "Device User"
    type: string
    sql: ${TABLE}.c5001_ADID ;;
  }

  dimension: c5001_app_package_name {
    type: string
    sql: ${TABLE}.c5001_app_package_name ;;
  }

  dimension: c5001_app_version {
    type: string
    sql: ${TABLE}.c5001_app_version ;;
  }

  dimension: c5001_device_type {
    type: string
    sql: ${TABLE}.c5001_device_type ;;
  }

  dimension: c5001_event_type {
    type: string
    sql: ${TABLE}.c5001_event_type ;;
  }

  dimension: c5001_limited_ad_tracking {
    type: string
    sql: ${TABLE}.c5001_limited_ad_tracking ;;
  }

  dimension_group: c5001_occurred {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: CAST(${TABLE}.c5001_occurred_time AS TIMESTAMP) ;;
  }

  dimension_group: c5001_processed {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: CAST(${TABLE}.c5001_processed_time AS TIMESTAMP) ;;
  }

  dimension: c5001_ua_device_attributes {
    type: string
    sql: ${TABLE}.c5001_ua_device_attributes ;;
  }

  dimension: c5001_ua_device_channel {
    view_label: "Device User"
    type: string
    sql: ${TABLE}.c5001_ua_device_channel ;;
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
