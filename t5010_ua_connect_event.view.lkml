view: t5010_ua_connect_event {
  sql_table_name: PUBLIC.T5010_UA_CONNECT_EVENT ;;

  dimension: c5010_eventdata {
    type: string
    sql: ${TABLE}.C5010_EVENTDATA ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
