view: ua_connect_event {
  sql_table_name: PUBLIC.UA_CONNECT_EVENT ;;

  dimension: eventdata {
    type: string
    sql: ${TABLE}.EVENTDATA ;;
  }

  dimension: event_type {
    type: string
    sql: eventdata:type ;;
  }

  dimension: push_id {
    type: string
    sql: eventdata:body:push_id ;;
  }

  dimension: device_type {
    type: string
    sql: eventdata:device:device_type ;;
  }

  dimension: device_channel {
    type: string
    sql: eventdata:device:channel ;;
  }

  dimension_group: occurred {
    type: time
    timeframes: [
      time,
      date,
      week,
      month,
      year,
      hour_of_day
    ]
    sql: eventdata:occurred ;;
  }

  dimension_group: processed {
    type: time
    timeframes: [
      time,
      date,
      week,
      month,
      year,
      hour_of_day
    ]
    sql: eventdata:processed ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
