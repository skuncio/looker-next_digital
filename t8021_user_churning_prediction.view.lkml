view: t8021_user_churning_prediction {
  sql_table_name: public.t8021_user_churning_prediction_prd ;;

  dimension: c8021_adid {
    type: string
    sql: ${TABLE}.c8021_adid ;;
  }

  dimension: c8021_classlabel {
    type: string
    sql: ${TABLE}.c8021_classlabel ;;
  }

  dimension_group: c8021_predicted {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    sql: ${TABLE}.c8021_predicted_date ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
