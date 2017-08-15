view: t8014_user_campaign {
  sql_table_name: public.t8014_user_campaign ;;

  dimension_group: c8014_activity {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.c8014_activity_date ;;
  }

  dimension: c8014_address {
    type: string
    sql: ${TABLE}.c8014_address ;;
  }

  dimension: c8014_adid {
    type: string
    sql: ${TABLE}.c8014_adid ;;
  }

  dimension: c8014_age_group {
    type: string

    case: {
      when: {
        sql: ${TABLE}.c8014_age_group = 0 ;;
        label: "<13"
      }

      when: {
        sql: ${TABLE}.c8014_age_group = 1 ;;
        label: "13-17"
      }

      when: {
        sql: ${TABLE}.c8014_age_group = 2 ;;
        label: "18-24"
      }

      when: {
        sql: ${TABLE}.c8014_age_group = 3 ;;
        label: "25-34"
      }

      when: {
        sql: ${TABLE}.c8014_age_group = 4 ;;
        label: "35-44"
      }

      when: {
        sql: ${TABLE}.c8014_age_group = 5 ;;
        label: "45-54"
      }

      when: {
        sql: ${TABLE}.c8014_age_group = 6 ;;
        label: "55-64"
      }

      when: {
        sql: ${TABLE}.c8014_age_group = 7 ;;
        label: "64+"
      }

      when: {
        sql: true ;;
        label: "unknown"
      }
    }
  }

  dimension: c8014_answer {
    type: string
    sql: ${TABLE}.C8014_ANSWER ;;
  }

  dimension: c8014_cpid {
    type: string
    sql: ${TABLE}.c8014_cpid ;;
  }

  dimension: c8014_cpreg {
    type: string
    sql: ${TABLE}.c8014_cpreg ;;
  }

  dimension: c8014_did {
    type: string
    sql: ${TABLE}.c8014_did ;;
  }

  dimension: c8014_dob {
    type: string
    sql: ${TABLE}.C8014_DOB ;;
  }

  dimension: c8014_email {
    type: string
    sql: ${TABLE}.c8014_email ;;
  }

  dimension: c8014_eseq {
    type: string
    sql: ${TABLE}.C8014_ESEQ ;;
  }

  dimension: c8014_gender {
    type: string
    sql: ${TABLE}.c8014_gender ;;
  }

  dimension: c8014_gigyaid {
    type: string
    sql: ${TABLE}.c8014_gigyaid ;;
  }

  dimension: c8014_income {
    type: string
    sql: ${TABLE}.C8014_INCOME ;;
  }

  dimension: c8014_name {
    type: string
    sql: ${TABLE}.c8014_name ;;
  }

  dimension: c8014_nxtu_or_did {
    type: string
    sql: ${TABLE}.c8014_nxtu_or_did ;;
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
    sql: ${TABLE}.c8014_phone ;;
  }

  dimension: c8014_platform {
    type: string
    sql: ${TABLE}.c8014_platform ;;
  }

  dimension: c8014_question {
    type: string
    sql: ${TABLE}.C8014_QUESTION ;;
  }

  dimension: c8014_sname {
    type: string
    sql: ${TABLE}.C8014_SNAME ;;
  }

  dimension: c8014_usrc {
    type: string
    sql: ${TABLE}.c8014_usrc ;;
  }

  measure: count {
    type: count
    drill_fields: [c8014_name, c8014_sname]
  }

  measure: distinct_users {
    type: count_distinct
    sql: ${c8014_nxtu_or_did} ;;
  }

  measure: last_updated_activity {
    type: date
    sql: MAX(${c8014_activity_date}) ;;
    convert_tz: no
  }
}
