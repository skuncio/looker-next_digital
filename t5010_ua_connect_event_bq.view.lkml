view: t5010_ua_connect_event_bq {
  sql_table_name: UA_CONNECT.t5010_ua_connect_event ;;

  dimension: c5010_eventdata {
    type: string
    sql: ${TABLE}.c5010_eventdata ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
