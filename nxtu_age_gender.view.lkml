view: nxtu_age_gender {
  sql_table_name: public.nxtu_age_gender ;;

  dimension: age_group {
    type: string
    sql: ${TABLE}.age_group ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension: predicted_age_group {
    type: string
    sql: ${TABLE}.predicted_age_group ;;
  }

  dimension: predicted_gender {
    type: string
    sql: ${TABLE}.predicted_gender ;;
  }

  dimension: nxtuid {
    type: string
    sql: ${TABLE}.nxtuid ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
