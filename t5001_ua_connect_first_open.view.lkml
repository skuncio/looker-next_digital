view: t5001_ua_connect_first_open {
  sql_table_name: PUBLIC.T5001_UA_CONNECT_FIRST_OPEN ;;

  dimension: c5001_adid {
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

  dimension: c5001_occurred_time {
    type: string
    sql: ${TABLE}.C5001_OCCURRED_TIME ;;
  }

  dimension: c5001_processed_time {
    type: string
    sql: ${TABLE}.C5001_PROCESSED_TIME ;;
  }

  dimension: c5001_ua_device_attributes {
    type: string
    sql: ${TABLE}.C5001_UA_DEVICE_ATTRIBUTES ;;
  }

  dimension: c5001_ua_device_channel {
    type: string
    sql: ${TABLE}.C5001_UA_DEVICE_CHANNEL ;;
  }

  measure: count {
    type: count
    drill_fields: [c5001_app_package_name]
  }
}
