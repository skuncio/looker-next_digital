view: t5005_ua_connect_tag_change {
  sql_table_name: PUBLIC.T5005_UA_CONNECT_TAG_CHANGE ;;

  dimension: c5005_added_device_tags {
    type: string
    sql: ${TABLE}.C5005_ADDED_DEVICE_TAGS ;;
  }

  dimension: c5005_added_tags {
    type: string
    sql: ${TABLE}.C5005_ADDED_TAGS ;;
  }

  dimension: c5005_adid {
    type: string
    sql: ${TABLE}.C5005_ADID ;;
  }

  dimension: c5005_current_device_tags {
    type: string
    sql: ${TABLE}.C5005_CURRENT_DEVICE_TAGS ;;
  }

  dimension: c5005_current_tags {
    type: string
    sql: ${TABLE}.C5005_CURRENT_TAGS ;;
  }

  dimension: c5005_device_type {
    type: string
    sql: ${TABLE}.C5005_DEVICE_TYPE ;;
  }

  dimension: c5005_event_type {
    type: string
    sql: ${TABLE}.C5005_EVENT_TYPE ;;
  }

  dimension: c5005_limited_ad_tracking {
    type: string
    sql: ${TABLE}.C5005_LIMITED_AD_TRACKING ;;
  }

  dimension: c5005_occurred_time {
    type: string
    sql: ${TABLE}.C5005_OCCURRED_TIME ;;
  }

  dimension: c5005_processed_time {
    type: string
    sql: ${TABLE}.C5005_PROCESSED_TIME ;;
  }

  dimension: c5005_removed_device_tags {
    type: string
    sql: ${TABLE}.C5005_REMOVED_DEVICE_TAGS ;;
  }

  dimension: c5005_removed_tags {
    type: string
    sql: ${TABLE}.C5005_REMOVED_TAGS ;;
  }

  dimension: c5005_ua_device_attributes {
    type: string
    sql: ${TABLE}.C5005_UA_DEVICE_ATTRIBUTES ;;
  }

  dimension: c5005_ua_device_channel {
    type: string
    sql: ${TABLE}.C5005_UA_DEVICE_CHANNEL ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
