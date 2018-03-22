view: t4003_animated_cid {
  sql_table_name: public.t4003_animated_cid ;;

  dimension: c4003_animated {
    type: string
    sql: ${TABLE}.c4003_animated ;;
  }

  dimension: c4003_cid {
    type: string
    sql: ${TABLE}.c4003_cid ;;
  }

  dimension: c4003_imp_type {
    type: string
    sql: ${TABLE}.c4003_imp_type ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
