view: t1025_reg_prod_cid_title_join {
  sql_table_name: public.t1025_reg_prod_cid_title ;;

  dimension: content_author {
    type: string
    sql: ${TABLE}.C1025_AUTHOR ;;
  }

  dimension: c1025_cid {
    type: string
    hidden: yes
    sql: ${TABLE}.c1025_cid ;;
  }

  dimension: c1025_imp_type {
    type: string
    hidden: yes
    sql: ${TABLE}.c1025_imp_type ;;
  }

  dimension: imp_type {
    type: string
    hidden: yes
    sql: ${TABLE}.c1025_imp_type ;;

    case: {
      when: {
        sql: ${TABLE}.c1025_imp_type = 'I' ;;
        label: "PAGEVIEW"
      }

      when: {
        sql: ${TABLE}.c1025_imp_type = 'V' ;;
        label: "VIDEOVIEW"
      }

        when: {
        sql: true ;;
        label: "unknown"
      }
    }
  }

  dimension: c1025_product {
    type: string
    hidden: yes
    sql: ${TABLE}.c1025_product ;;
  }

  dimension: c1025_region {
    type: string
    hidden: yes
    sql: ${TABLE}.c1025_region ;;
  }

  dimension: Content_title {
    type: string
    sql: ${TABLE}.c1025_title ;;
  }

  measure: count {
    type: count
    hidden: yes
    drill_fields: []
  }
}
