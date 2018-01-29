view: t5003_ua_connect_send_bq {
  sql_table_name: UA_CONNECT.t5003_ua_connect_send ;;

  dimension: c5003_adid {
    view_label: "Device User"
    type: string
    sql: ${TABLE}.c5003_ADID ;;
  }

  dimension: c5003_device_type {
    type: string
    sql: ${TABLE}.c5003_device_type ;;
  }

  dimension: c5003_event_type {
    type: string
    sql: ${TABLE}.c5003_event_type ;;
  }

  dimension: c5003_limited_ad_tracking {
    type: string
    sql: ${TABLE}.c5003_limited_ad_tracking ;;
  }

  dimension_group: c5003_occurred {
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
    sql: CAST(${TABLE}.c5003_occurred_time AS TIMESTAMP) ;;
  }

  dimension_group: c5003_processed {
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
    sql: CAST(${TABLE}.c5003_processed_time AS TIMESTAMP) ;;
  }

  dimension: c5003_push_id {
    type: string
    sql: ${TABLE}.c5003_push_id ;;
  }

  dimension: c5003_ua_device_attributes {
    type: string
    sql: ${TABLE}.c5003_ua_device_attributes ;;
  }

  dimension: c5003_ua_device_channel {
    view_label: "Device User"
    type: string
    sql: ${TABLE}.c5003_ua_device_channel ;;
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
