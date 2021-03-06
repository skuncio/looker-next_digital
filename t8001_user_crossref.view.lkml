view: t8001_user_crossref {
  sql_table_name: public.t8001_user_crossref ;;

  dimension: c8001_activity_count {
    type: number
    sql: ${TABLE}.c8001_activity_count ;;
  }

  dimension: c8001_adid {
    type: string
    sql: ${TABLE}.c8001_adid ;;
  }

  dimension: c8001_android_id {
    type: string
    sql: ${TABLE}.c8001_android_id ;;
  }

  dimension: c8001_city {
    type: string
    sql: ${TABLE}.c8001_city ;;
  }

  dimension: c8001_country {
    type: string
    sql: ${TABLE}.c8001_country ;;
  }

    dimension_group: c8001_create {
    group_label: "C8001 Create"
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
    sql: ${TABLE}.c8001_create_date ;;
  }

  dimension: c8001_create_date_d {
    group_label: "C8001 Create"
    sql: TO_DATE(${TABLE}.c8001_create_date) ;;
  }

  dimension: c8001_did {
    type: string
    sql: ${TABLE}.c8001_did ;;
  }

  dimension: c8001_fbid {
    type: string
    sql: ${TABLE}.C8001_FBID ;;
  }

  dimension: c8001_gaid {
    type: string
    sql: ${TABLE}.c8001_gaid ;;
  }

  dimension: c8001_gigyaid {
    type: string
    sql: ${TABLE}.c8001_gigyaid ;;
  }

  dimension: c8001_ip {
    type: string
    sql: ${TABLE}.c8001_ip ;;
  }

  dimension: c8001_ip_count {
    type: number
    sql: ${TABLE}.c8001_ip_count ;;
  }

  dimension_group: c8001_last_activity {
    group_label: "C8001 Last Activity"
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
    sql: ${TABLE}.c8001_last_activity_date ;;
  }

  dimension: c8001_last_activity_date_d {
    group_label: "C8001 Last Activity"
    sql: TO_DATE(${TABLE}.c8001_last_activity_date) ;;
  }

  dimension: c8001_ndid {
    type: string
    sql: ${TABLE}.c8001_ndid ;;
  }

  dimension: c8001_ngsid {
    type: string
    sql: ${TABLE}.c8001_ngsid ;;
  }

  dimension: c8001_nxtu {
    type: string
    sql: ${TABLE}.c8001_nxtu ;;
  }

  dimension: c8001_nxtu_or_did {
    type: string
    sql: ${TABLE}.c8001_nxtu_or_did ;;
  }


  dimension: c8001_omo_accid {
    type: string
    sql: ${TABLE}.C8001_OMO_ACCID ;;
  }

  dimension_group: c8001_update {
  hidden: yes
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
    sql: ${TABLE}.C8001_UPDATE_DATE ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: distinct_nxtuid {
    type: count_distinct
    sql: ${c8001_nxtu_or_did} ;;
  }
}

#    approximate: true
