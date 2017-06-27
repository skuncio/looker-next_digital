view: t4005_etw_event {
  sql_table_name: public.t4005_etw_event ;;

  dimension: c4005_adid {
    type: string
    sql: ${TABLE}.c4005_adid ;;
  }

  dimension: c4005_area {
    type: string
    sql: ${TABLE}.c4005_area ;;
  }

  dimension: c4005_br {
    type: string
    sql: ${TABLE}.c4005_br ;;
  }

  dimension: c4005_bv {
    type: string
    sql: ${TABLE}.c4005_bv ;;
  }

  dimension: c4005_cuisine {
    type: string
    sql: ${TABLE}.c4005_cuisine ;;
  }

  dimension: c4005_did {
    type: string
    sql: ${TABLE}.c4005_did ;;
  }

  dimension: c4005_district {
    type: string
    sql: ${TABLE}.c4005_district ;;
  }

  dimension: c4005_eaction {
    type: string
    sql: ${TABLE}.c4005_eaction ;;
  }

  dimension: c4005_ecat {
    type: string
    sql: ${TABLE}.c4005_ecat ;;
  }

  dimension_group: c4005_edate {
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
    sql: ${TABLE}.c4005_edate ;;
  }

  dimension: c4005_elabel {
    type: string
    sql: ${TABLE}.c4005_elabel ;;
  }

  dimension: c4005_elabel_id {
    type: string
    sql: ${TABLE}.c4005_elabel_id ;;
  }

  dimension: c4005_eval {
    type: string
    sql: ${TABLE}.c4005_eval ;;
  }

  dimension: c4005_eval2 {
    type: string
    sql: ${TABLE}.c4005_eval2 ;;
  }

  dimension: c4005_eval3 {
    type: string
    sql: ${TABLE}.c4005_eval3 ;;
  }

  dimension: c4005_eval4 {
    type: string
    sql: ${TABLE}.c4005_eval4 ;;
  }

  dimension: c4005_foodtype {
    type: string
    sql: ${TABLE}.c4005_foodtype ;;
  }

  dimension: c4005_from {
    type: string
    sql: ${TABLE}.c4005_from ;;
  }

  dimension: c4005_lat {
    type: number
    sql: ${TABLE}.c4005_lat ;;
  }

  dimension: c4005_lon {
    type: number
    sql: ${TABLE}.c4005_lon ;;
  }

  dimension: c4005_nxtu {
    type: string
    sql: ${TABLE}.c4005_nxtu ;;
  }

  dimension: c4005_omo_accid {
    type: string
    sql: ${TABLE}.c4005_omo_accid ;;
  }

  dimension: c4005_omo_pid {
    type: string
    sql: ${TABLE}.c4005_omo_pid ;;
  }

  dimension: c4005_os {
    type: string
    sql: ${TABLE}.c4005_os ;;
  }

  dimension: c4005_photo_id {
    type: string
    sql: ${TABLE}.c4005_photo_id ;;
  }

  dimension: c4005_platform {
    type: string
    sql: ${TABLE}.c4005_platform ;;
  }

  dimension: c4005_pos {
    type: number
    sql: ${TABLE}.c4005_pos ;;
  }

  dimension: c4005_prod {
    type: string
    sql: ${TABLE}.c4005_prod ;;
  }

  dimension: c4005_region {
    type: string
    sql: ${TABLE}.c4005_region ;;
  }

  dimension: c4005_related_id {
    type: string
    sql: ${TABLE}.c4005_related_id ;;
  }

  dimension: c4005_sess {
    type: string
    sql: ${TABLE}.c4005_sess ;;
  }

  dimension: c4005_site {
    type: string
    sql: ${TABLE}.c4005_site ;;
  }

  dimension: c4005_spending {
    type: string
    sql: ${TABLE}.c4005_spending ;;
  }

  dimension: c4005_sz {
    type: string
    sql: ${TABLE}.c4005_sz ;;
  }

  dimension: c4005_version {
    type: string
    sql: ${TABLE}.c4005_version ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
