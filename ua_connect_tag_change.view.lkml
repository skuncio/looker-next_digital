view: ua_connect_tag_change {
  sql_table_name: PUBLIC.UA_CONNECT_TAG_CHANGE ;;

  dimension: _ios_adid {
    type: string
    sql: ${TABLE}._IOS_ADID ;;
  }

  dimension: added_device_tags {
    type: string
    sql: ${TABLE}.ADDED_DEVICE_TAGS ;;
  }

  dimension: added_tags {
    type: string
    sql: ${TABLE}.ADDED_TAGS ;;
  }

  dimension: adid {
    type: string
    sql: ${TABLE}.ADID ;;
  }

  dimension: android_aaid {
    type: string
    sql: ${TABLE}.ANDROID_AAID ;;
  }

  dimension: current_device_tags {
    type: string
    sql: ${TABLE}.CURRENT_DEVICE_TAGS ;;
  }

  dimension: current_tags {
    type: string
    sql: ${TABLE}.CURRENT_TAGS ;;
  }

  dimension: device_type {
    type: string
    sql: ${TABLE}.DEVICE_TYPE ;;
  }

  dimension: event_type {
    type: string
    sql: ${TABLE}.EVENT_TYPE ;;
  }

  dimension: limited_ad_tracking {
    type: string
    sql: ${TABLE}.LIMITED_AD_TRACKING ;;
  }

  dimension: occurred_time {
    type: string
    sql: ${TABLE}.OCCURRED_TIME ;;
  }

  dimension: processed_time {
    type: string
    sql: ${TABLE}.PROCESSED_TIME ;;
  }

  dimension: removed_device_tags {
    type: string
    sql: ${TABLE}.REMOVED_DEVICE_TAGS ;;
  }

  dimension: removed_tags {
    type: string
    sql: ${TABLE}.REMOVED_TAGS ;;
  }

  dimension: ua_device_attributes {
    type: string
    sql: ${TABLE}.UA_DEVICE_ATTRIBUTES ;;
  }

  dimension: ua_device_channel {
    type: string
    sql: ${TABLE}.UA_DEVICE_CHANNEL ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
