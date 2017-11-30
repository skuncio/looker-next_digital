view: t8022_user_segment_list {
  sql_table_name: PUBLIC.T8022_USER_SEGMENT_LIST ;;

  dimension: c8022_nxtuid {
    type: string
    sql: ${TABLE}.C8022_NXTUID ;;
  }

  dimension: c8022_segment_list {
    type: string
    sql: ${TABLE}.C8022_SEGMENT_LIST ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
