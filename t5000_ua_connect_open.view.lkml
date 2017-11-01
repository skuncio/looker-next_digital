view: t5000_ua_connect_open {
  sql_table_name: PUBLIC.T5000_UA_CONNECT_OPEN ;;

  dimension: c5000_adid {
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

  dimension: c5000_last_delivered_time {
    type: string
    sql: ${TABLE}.C5000_LAST_DELIVERED_TIME ;;
  }

  dimension: c5000_limited_ad_tracking {
    type: string
    sql: ${TABLE}.C5000_LIMITED_AD_TRACKING ;;
  }

  dimension: c5000_occurred_time {
    type: string
    sql: ${TABLE}.C5000_OCCURRED_TIME ;;
  }

  dimension: c5000_processed_time {
    type: string
    sql: ${TABLE}.C5000_PROCESSED_TIME ;;
  }

  dimension: c5000_triggering_push_id {
    type: string
    sql: ${TABLE}.C5000_TRIGGERING_PUSH_ID ;;
  }

  dimension: c5000_triggering_push_time {
    type: string
    sql: ${TABLE}.C5000_TRIGGERING_PUSH_TIME ;;
  }

  dimension: c5000_ua_device_attributes {
    type: string
    sql: ${TABLE}.C5000_UA_DEVICE_ATTRIBUTES ;;
  }

  dimension: c5000_ua_device_channel {
    type: string
    sql: ${TABLE}.C5000_UA_DEVICE_CHANNEL ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
