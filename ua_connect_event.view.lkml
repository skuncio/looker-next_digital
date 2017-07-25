view: ua_connect_event {
  sql_table_name: PUBLIC.UA_CONNECT_EVENT ;;

  dimension: eventdata {
    type: string
    sql: ${TABLE}.EVENTDATA ;;
  }

  dimension: event_type {
    type: string
    sql: eventdata:type::string ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
