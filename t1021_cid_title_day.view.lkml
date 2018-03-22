view: t1021_cid_title_day {
  sql_table_name: public.t1021_cid_title_day ;;

  dimension: c1021_anim_type {
    type: string
    sql: ${TABLE}.c1021_anim_type ;;
  }

  dimension: c1021_artid {
    type: string
    sql: ${TABLE}.c1021_artid ;;
  }

  dimension: c1021_cid {
    type: string
    sql: ${TABLE}.c1021_cid ;;
  }

  dimension_group: c1021_create {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.c1021_create_date ;;
  }

  dimension: c1021_imp_type {
    type: string
    sql: ${TABLE}.c1021_imp_type ;;
  }

  dimension_group: c1021_issueid {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.c1021_issueid ;;
  }

  dimension: c1021_ml_log_ind {
    type: string
    sql: ${TABLE}.c1021_ml_log_ind ;;
  }

  dimension: c1021_product {
    type: string
    sql: ${TABLE}.c1021_product ;;
  }

  dimension: c1021_region {
    type: string
    sql: ${TABLE}.c1021_region ;;
  }

  dimension: c1021_title {
    type: string
    sql: ${TABLE}.c1021_title ;;
  }

  dimension_group: c1021_update {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.c1021_update_date ;;
  }

  dimension: c1021_video_length {
    type: number
    sql: ${TABLE}.c1021_video_length ;;
  }

  dimension: c1021_video_path {
    type: string
    sql: ${TABLE}.c1021_video_path ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
