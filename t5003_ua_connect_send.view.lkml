view: t5003_ua_connect_send {
  sql_table_name: PUBLIC.T5003_UA_CONNECT_SEND ;;

  dimension: c5003_adid {
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

  dimension: c5003_occurred_time {
    type: string
    sql: ${TABLE}.C5003_OCCURRED_TIME ;;
  }

  dimension: c5003_processed_time {
    type: string
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
    type: string
    sql: ${TABLE}.C5003_UA_DEVICE_CHANNEL ;;
  }

  dimension: c503_device_type {
    type: string
    sql: ${TABLE}.C503_DEVICE_TYPE ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
