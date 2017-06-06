view: t8025_user_gender_prediction {
  sql_table_name: public.t8025_user_gender_prediction ;;

  dimension: c8025_confidence {
    type: number
    sql: ${TABLE}.c8025_confidence ;;
  }

  dimension: c8025_gender {
    type: string
    sql: ${TABLE}.c8025_gender ;;
  }

  dimension: c8025_nxtuid {
    type: string
    sql: ${TABLE}.c8025_nxtuid ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
