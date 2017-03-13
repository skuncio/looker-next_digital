view: t1025_reg_prod_cid_title {
  sql_table_name: public.t1025_reg_prod_cid_title ;;

  dimension: c1025_cid {
    type: string
    sql: ${TABLE}.c1025_cid ;;
  }

  dimension: c1025_imp_type {
    type: string
    sql: ${TABLE}.c1025_imp_type ;;
  }

  dimension: c1025_product {
    type: string
    sql: ${TABLE}.c1025_product ;;
  }

  dimension: c1025_region {
    type: string
    sql: ${TABLE}.c1025_region ;;
  }

  dimension: c1025_title {
    type: string
    sql: ${TABLE}.c1025_title ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
