view: t5006_ua_connect_location_bq {
  sql_table_name: UA_CONNECT.t5006_ua_connect_location ;;

  dimension: c5006_adid {
    type: string
    sql: ${TABLE}.c5006_ADID ;;
  }

  dimension: c5006_app_package_name {
    type: string
    sql: ${TABLE}.c5006_app_package_name ;;
  }

  dimension: c5006_app_version {
    type: string
    sql: ${TABLE}.c5006_app_version ;;
  }

  dimension: c5006_device_type {
    type: string
    sql: ${TABLE}.c5006_device_type ;;
  }

  dimension: c5006_event_type {
    type: string
    sql: ${TABLE}.c5006_event_type ;;
  }

  dimension: c5006_foreground {
    type: string
    sql: ${TABLE}.c5006_foreground ;;
  }

  dimension: c5006_latitude {
    type: string
    sql: ${TABLE}.c5006_latitude ;;
  }

  dimension: c5006_limited_ad_tracking {
    type: string
    sql: ${TABLE}.c5006_limited_ad_tracking ;;
  }

  dimension: c5006_longitude {
    type: string
    sql: ${TABLE}.c5006_longitude ;;
  }

  dimension_group: c5006_occurred {
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
    sql: CAST(${TABLE}.c5006_occurred_time AS TIMESTAMP) ;;
  }

  dimension_group: c5006_processed {
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
    sql: CAST(${TABLE}.c5006_processed_time AS TIMESTAMP) ;;
  }

  dimension: c5006_ua_device_attributes {
    type: string
    sql: ${TABLE}.c5006_ua_device_attributes ;;
  }

  dimension: c5006_ua_device_channel {
    type: string
    sql: ${TABLE}.c5006_ua_device_channel ;;
  }

  measure: count {
    type: count
    drill_fields: [c5006_app_package_name]
  }
}
