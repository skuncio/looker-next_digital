view: t5004_ua_connect_uninstall_bq {
  sql_table_name: UA_CONNECT.t5004_ua_connect_uninstall ;;

  dimension: c5004_adid {
    view_label: "Device User"
    type: string
    sql: ${TABLE}.c5004_ADID ;;
  }

  dimension: c5004_app_package_name {
    type: string
    sql: ${TABLE}.c5004_app_package_name ;;
  }

  dimension: c5004_app_version {
    type: string
    sql: ${TABLE}.c5004_app_version ;;
  }

  dimension: c5004_device_type {
    type: string
    sql: ${TABLE}.c5004_device_type ;;
  }

  dimension: c5004_event_type {
    type: string
    sql: ${TABLE}.c5004_event_type ;;
  }

  dimension: c5004_limited_ad_tracking {
    type: string
    sql: ${TABLE}.c5004_limited_ad_tracking ;;
  }

  dimension_group: c5004_occurred {
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
    sql: CAST(${TABLE}.c5004_occurred_time AS TIMESTAMP) ;;
  }

  dimension_group: c5004_processed {
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
    sql: CAST(${TABLE}.c5004_processed_time AS TIMESTAMP) ;;
  }

  dimension: c5004_ua_device_attributes {
    type: string
    sql: ${TABLE}.c5004_ua_device_attributes ;;
  }

  dimension: c5004_ua_device_channel {
    view_label: "Device User"
    type: string
    sql: ${TABLE}.c5004_ua_device_channel ;;
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
