view: ua_connect_open {
  sql_table_name: PUBLIC.UA_CONNECT_OPEN ;;

  dimension: aaid {
    type: string
    sql: ${TABLE}.AAID ;;
  }

  dimension: adid {
    type: string
    sql: ${TABLE}.ADID ;;
  }

  dimension: device_type {
    type: string
    sql: ${TABLE}.DEVICE_TYPE ;;
  }

  dimension: event_type {
    type: string
    sql: ${TABLE}.EVENT_TYPE ;;
  }

  dimension: last_delivered_push_id {
    type: string
    sql: ${TABLE}.LAST_DELIVERED_PUSH_ID ;;
  }

  dimension_group: last_delivered {
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
    sql: ${TABLE}.LAST_DELIVERED_TIME ;;
  }

  dimension_group: occurred {
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
    sql: ${TABLE}.OCCURRED_DATE ;;
  }

  dimension_group: processed {
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
    sql: ${TABLE}.PROCESSED_DATE ;;
  }

  dimension: triggering_push_id {
    type: string
    sql: ${TABLE}.TRIGGERING_PUSH_ID ;;
  }

  dimension_group: triggering_push {
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
    sql: ${TABLE}.TRIGGERING_PUSH_TIME ;;
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
