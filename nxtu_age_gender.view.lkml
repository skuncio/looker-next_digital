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

  dimension: nxtuid {
    type: string
    sql: ${TABLE}.nxtuid ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
