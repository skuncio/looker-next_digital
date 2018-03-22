view: t5010_ua_connect_event_bq {
  sql_table_name: UA_CONNECT.t5010_ua_connect_event ;;

  dimension: c5010_eventdata {
    type: string
    sql: ${TABLE}.c5010_eventdata ;;
  }

  dimension_group: c5010_processed {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: DATETIME(CAST(JSON_EXTRACT_SCALAR( c5010_eventdata, '$.processed') AS TIMESTAMP),"Asia/Hong_Kong");;
    }

  measure: count {
    type: count
    drill_fields: []
  }
}
