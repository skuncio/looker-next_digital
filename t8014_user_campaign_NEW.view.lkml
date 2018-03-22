view: t8014_user_campaign_new {
  sql_table_name: PUBLIC.T8014_USER_CAMPAIGN ;;

  dimension: c8014_activity_date {
    type: string
    sql: ${TABLE}.C8014_ACTIVITY_DATE ;;
  }

  dimension: c8014_adid {
    type: string
    sql: ${TABLE}.C8014_ADID ;;
  }

  dimension: c8014_adress {
    type: string
    sql: ${TABLE}.C8014_ADRESS ;;
  }

  dimension: c8014_age_group {
    type: string
    sql: ${TABLE}.C8014_AGE_GROUP ;;
  }

  dimension: c8014_answer {
    type: string
    sql: ${TABLE}.C8014_ANSWER ;;
  }

  dimension: c8014_cpid {
    type: string
    sql: ${TABLE}.C8014_CPID ;;
  }

  dimension: c8014_cpreg {
    type: string
    sql: ${TABLE}.C8014_CPREG ;;
  }

  dimension: c8014_did {
    type: string
    sql: ${TABLE}.C8014_DID ;;
  }

  dimension: c8014_dob {
    type: string
    sql: ${TABLE}.C8014_DOB ;;
  }

  dimension: c8014_email {
    type: string
    sql: ${TABLE}.C8014_EMAIL ;;
  }

  dimension: c8014_eseq {
    type: string
    sql: ${TABLE}.C8014_ESEQ ;;
  }

  dimension: c8014_gender {
    type: string
    sql: ${TABLE}.C8014_GENDER ;;
  }

  dimension: c8014_gigyaid {
    type: string
    sql: ${TABLE}.C8014_GIGYAID ;;
  }

  dimension: c8014_income {
    type: string
    sql: ${TABLE}.C8014_INCOME ;;
  }

  dimension: c8014_name {
    type: string
    sql: ${TABLE}.C8014_NAME ;;
  }

  dimension: c8014_nxtu_or_did {
    type: string
    sql: ${TABLE}.C8014_NXTU_OR_DID ;;
  }

  dimension: c8014_omo_accid {
    type: string
    sql: ${TABLE}.C8014_OMO_ACCID ;;
  }

  dimension: c8014_omo_pid {
    type: string
    sql: ${TABLE}.C8014_OMO_PID ;;
  }

  dimension: c8014_phone {
    type: string
    sql: ${TABLE}.C8014_PHONE ;;
  }

  dimension: c8014_platform {
    type: string
    sql: ${TABLE}.C8014_PLATFORM ;;
  }

  dimension: c8014_quesiton {
    type: string
    sql: ${TABLE}.C8014_QUESITON ;;
  }

  dimension: c8014_sname {
    type: string
    sql: ${TABLE}.C8014_SNAME ;;
  }

  dimension: c8014_usrc {
    type: string
    sql: ${TABLE}.C8014_USRC ;;
  }

  measure: count {
    type: count
    drill_fields: [c8014_name, c8014_sname]
  }
}
