view: t8025_user_gender_prediction {
  sql_table_name: public.t8025_user_gender_prediction ;;

  dimension: c8025_confidence {
    type: number
    sql: ${TABLE}.SCORE;;
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

  measure: distinct_users {
    type: count_distinct
    value_format: "[>=1000000]0.0,,\"M\";[>=1000]0.0,\"K\";0"
    sql: ${TABLE}.c8025_nxtuid ;;
#    approximate: yes
  }


}
