view: t5004_ua_connect_uninstall {
  sql_table_name: PUBLIC.T5004_UA_CONNECT_UNINSTALL ;;

  dimension: c5004_adid {
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

  dimension: c5004_occurred_time {
    type: string
    sql: ${TABLE}.C5004_OCCURRED_TIME ;;
  }

  dimension: c5004_processed_time {
    type: string
    sql: ${TABLE}.C5004_PROCESSED_TIME ;;
  }

  dimension: c5004_ua_device_attributes {
    type: string
    sql: ${TABLE}.C5004_UA_DEVICE_ATTRIBUTES ;;
  }

  dimension: c5004_ua_device_channel {
    type: string
    sql: ${TABLE}.C5004_UA_DEVICE_CHANNEL ;;
  }

  measure: count {
    type: count
    drill_fields: [c5004_app_package_name]
  }
}
