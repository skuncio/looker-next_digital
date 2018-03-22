view: t5005_ua_connect_tag_change {
  sql_table_name: PUBLIC.T5005_UA_CONNECT_TAG_CHANGE ;;

  dimension: c5005_added_device_tags {
    view_label: "Device Tags"
    type: string
    sql: ${TABLE}.C5005_ADDED_DEVICE_TAGS ;;
  }

  dimension: c5005_added_tags {
    view_label: "All Tags"
    type: string
    sql: ${TABLE}.C5005_ADDED_TAGS ;;
  }

  dimension: c5005_adid {
    view_label: "Device User"
    type: string
    sql: ${TABLE}.C5005_ADID ;;
  }

  dimension: c5005_current_device_tags {
    view_label: "Device Tags"
    type: string
    sql: ${TABLE}.C5005_CURRENT_DEVICE_TAGS ;;
  }

  dimension: c5005_current_tags {
    view_label: "All Tags"
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

  dimension_group: c5005_occurred {
    type: time
    timeframes: [
      raw,
      date,
      hour_of_day,
      time,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.C5005_OCCURRED_TIME ;;
  }

  dimension_group: c5005_processed {
    type: time
    timeframes: [
      raw,
      date,
      hour_of_day,
      time,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.C5005_PROCESSED_TIME ;;
  }

  dimension: c5005_removed_device_tags {
    view_label: "Device Tags"
    type: string
    sql: ${TABLE}.C5005_REMOVED_DEVICE_TAGS ;;
  }

  dimension: c5005_removed_tags {
    view_label: "All Tags"
    type: string
    sql: ${TABLE}.C5005_REMOVED_TAGS ;;
  }

  dimension: c5005_ua_device_attributes {
    type: string
    sql: ${TABLE}.C5005_UA_DEVICE_ATTRIBUTES ;;
  }

  dimension: c5005_ua_device_channel {
    view_label: "Device User"
    type: string
    sql: ${TABLE}.C5005_UA_DEVICE_CHANNEL ;;
  }

  dimension: c5005_OMO_PID {
    view_label: "Device User"
    type: string
    sql: ${TABLE}.C5005_OMO_PID ;;
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
    sql: ${c5005_ua_device_channel} ;;
  }

  measure: distinct_adid {
    view_label: "Device User"
    type: count_distinct
    value_format: "#,##0"
    #  value_format: "[>=1000000]0.0,,\"M\";[>=1000]0.0,\"K\";0"
    sql: ${c5005_adid} ;;
  }
}
