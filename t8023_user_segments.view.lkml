view: t8023_user_segments {
  sql_table_name: public.t8023_user_segments ;;

  dimension_group: c8023_create {
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
    sql: ${TABLE}.c8023_create_date ;;
  }

  dimension: c8023_nxtuid {
    type: string
    sql: ${TABLE}.c8023_nxtuid ;;
  }

  dimension: c8023_segment {
    type: string
    sql: ${TABLE}.c8023_segment ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
