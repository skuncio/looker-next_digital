view: t8026_user_age_prediction {
  sql_table_name: public.t8026_user_age_prediction ;;

  dimension: c8026_nxtuid {
    type: string
    sql: ${TABLE}.c8026_nxtuid ;;
  }

  dimension: c8026_scored_class_0 {
    type: number
    value_format: "0.00000"
    sql: ${TABLE}.c8026_scored_class_0 ;;
  }

  dimension: c8026_scored_class_1 {
    type: number
    value_format: "0.00000"
    sql: ${TABLE}.c8026_scored_class_1 ;;
  }

  dimension: c8026_scored_class_2 {
    type: number
    value_format: "0.00000"
    sql: ${TABLE}.c8026_scored_class_2 ;;
  }

  dimension: c8026_scored_class_3 {
    type: number
    value_format: "0.00000"
    sql: ${TABLE}.c8026_scored_class_3 ;;
  }

  dimension: c8026_scored_class_4 {
    type: number
    value_format: "0.00000"
    sql: ${TABLE}.c8026_scored_class_4 ;;
  }

  dimension: c8026_scored_class_5 {
    type: number
    value_format: "0.00000"
    sql: ${TABLE}.c8026_scored_class_5 ;;
  }

  dimension: c8026_scored_class_6 {
    type: number
    value_format: "0.00000"
    sql: ${TABLE}.c8026_scored_class_6 ;;
  }

  dimension: c8026_scored_class_7 {
    type: number
    value_format: "0.00000"
    sql: ${TABLE}.c8026_scored_class_7 ;;
  }

  dimension: c8026_scored_labels {
    type: number
    sql: ${TABLE}.c8026_scored_labels ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
