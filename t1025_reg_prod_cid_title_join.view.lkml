view: t1025_reg_prod_cid_title_join {
  sql_table_name: public.t1025_reg_prod_cid_title ;;

  dimension: content_author {
    type: string
    sql: ${TABLE}.C1025_ML_AUTHOR ;;
  }

  dimension: c1025_cid {
    type: string
    hidden: yes
    sql: ${TABLE}.C1025_CID ;;
  }

  dimension_group: c1025_create {
    group_label: "c1025_create_date"
    type: time
    hidden: yes
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.C1025_ML_CREATE_DATE ;;
  }

  dimension: c1025_create_date_d {
    group_label: "c1025_create_date"
    hidden: yes
    sql: TO_DATE(${TABLE}.C1025_ML_CREATE_DATE) ;;
  }

  dimension: c1025_imp_type {
    type: string
    hidden: yes
    sql: ${TABLE}.C1025_IMP_TYPE ;;
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


  dimension: c1025_issueid {
    type: string
    hidden: yes
    sql: ${TABLE}.C1025_ML_ISSUEID ;;
  }

  dimension: c1025_modifier {
    type: string
    hidden: yes
    sql: ${TABLE}.C1025_ML_UPDATE_BY ;;
  }

  dimension: c1025_product {
    type: string
    hidden: yes
    sql: ${TABLE}.C1025_PRODUCT ;;
  }

  dimension: c1025_region {
    type: string
    hidden: yes
    sql: ${TABLE}.C1025_REGION ;;
  }

  dimension: content_title {
    type: string
    sql: ${TABLE}.C1025_TITLE ;;
  }

  dimension_group: c1025_update {
    group_label: "c1025_update_date"
    type: time
    hidden: yes
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.C1025_ML_UPDATE_DATE ;;
  }

  dimension: c1025_update_date_d {
    group_label: "c1025_update_date"
    hidden: yes
    sql: TO_DATE(${TABLE}.C1025_ML_UPDATE_DATE) ;;
  }

  measure: count {
    type: count
    hidden: yes
    drill_fields: []
  }
}
