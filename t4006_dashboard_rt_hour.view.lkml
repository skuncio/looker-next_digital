view: t4006_dashboard_rt_hour {
  sql_table_name: public.t4006_dashboard_rt_hour ;;

  dimension_group: c4006_datetime {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year,
      hour_of_day
    ]
    sql: ${TABLE}.c4006_datetime ;;
  }

  dimension: c4006_imp_type {
    type: string
    sql: ${TABLE}.c4006_imp_type ;;
  }

  dimension: c4006_product {
    type: string
    sql: ${TABLE}.c4006_product ;;
  }

  dimension: c4006_region {
    type: string
    sql: ${TABLE}.c4006_region ;;
  }

  dimension: c4006_view_count {
    type: number
    sql: ${TABLE}.c4006_view_count ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
