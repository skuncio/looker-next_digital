view: t1025_reg_prod_cid_title {
  sql_table_name: PUBLIC.T1025_REG_PROD_CID_TITLE ;;

  dimension: content_author {
    type: string
    sql: ${TABLE}.C1025_ML_AUTHOR ;;
  }

  dimension: c1025_cid {
    type: string
    sql: ${TABLE}.C1025_CID ;;
  }

  dimension_group: c1025_create {
    group_label: "c1025_create_date"
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
    datatype: date
    sql: ${TABLE}.C1025_ML_CREATE_DATE ;;
  }

  dimension: c1025_create_date_d {
    group_label: "c1025_create_date"
    sql: TO_DATE(${TABLE}.C1025_ML_CREATE_DATE) ;;
  }

  dimension: c1025_imp_type {
    type: string
    sql: ${TABLE}.C1025_IMP_TYPE ;;
  }

  dimension: c1025_issueid {
    type: string
    sql: ${TABLE}.C1025_ML_ISSUEID ;;
  }

  dimension: c1025_modifier {
    type: string
    sql: ${TABLE}.C1025_ML_UPDATE_BY ;;
  }

  dimension: c1025_product {
    type: string
    sql: ${TABLE}.C1025_PRODUCT ;;
  }

  dimension: c1025_region {
    type: string
    sql: ${TABLE}.C1025_REGION ;;
  }

  dimension: content_title {
    type: string
    sql: ${TABLE}.C1025_TITLE ;;
  }

  dimension_group: c1025_update {
    group_label: "c1025_update_date"
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
    datatype: date
    sql: ${TABLE}.C1025_ML_UPDATE_DATE ;;
  }

  dimension: c1025_update_date_d {
    group_label: "c1025_update_date"
    sql: TO_DATE(${TABLE}.C1025_ML_UPDATE_DATE) ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
