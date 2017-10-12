view: tb_superloyal {
  sql_table_name: PUBLIC.TB_SUPERLOYAL ;;

  dimension: ntile_1 {
    type: number
    sql: ${TABLE}.NTILE_1 ;;
  }

  dimension: ntile_2 {
    type: number
    sql: ${TABLE}.NTILE_2 ;;
  }

  dimension: ntile_3 {
    type: number
    sql: ${TABLE}.NTILE_3 ;;
  }

  dimension: ntile_4 {
    type: number
    sql: ${TABLE}.NTILE_4 ;;
  }

  dimension: ntile_5 {
    type: number
    sql: ${TABLE}.NTILE_5 ;;
  }

  dimension: ADID {
    type: string
    sql: ${TABLE}.ROW_ID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: distinct_adid {
    type: count_distinct
    sql: ${ADID} ;;
  }


}
