view: t3016_seg_agg_cid_day {
  sql_table_name: public.t3016_seg_agg_cid_day ;;

  dimension: c3016_ads {
    type: string
    sql: ${TABLE}.c3016_ads ;;
  }

  dimension: c3016_action {
    type: string
    sql: ${TABLE}.c3016_action ;;
  }

  dimension: c3016_artid {
    type: string
    sql: ${TABLE}.c3016_artid ;;
  }

  dimension: c3016_category {
    type: string
    sql: ${TABLE}.c3016_category ;;
  }

  dimension: c3016_channel {
    type: string
    sql: ${TABLE}.c3016_channel ;;
  }

  dimension: c3016_cid {
    type: string
    sql: ${TABLE}.c3016_cid ;;
  }

  dimension: c3016_content {
    type: string
    sql: ${TABLE}.c3016_content ;;
  }

  dimension: c3016_country_id {
    type: string
    sql: ${TABLE}.c3016_country_id ;;
  }

  dimension_group: c3016_date_id {
    group_label: "c3016_date_id"
    type: time
    timeframes: [
      date,
      day_of_week,
      day_of_week_index,
      week,
      month]
    convert_tz: no
    sql: ${TABLE}.c3016_date_id ;;
  }

  dimension: c3016_date_id_date_d {
    group_label: "c3016_date_id"
    sql: TO_DATE(${TABLE}.c3016_date_id) ;;
  }

  dimension: c3016_date_weekday {
    sql:
      CASE
         when ${c3016_date_id_day_of_week_index} = 6 then 'Weekend'
         when ${c3016_date_id_day_of_week_index} = 0 then 'Weekday'
         when ${c3016_date_id_day_of_week_index} = 1 then 'Weekday'
         when ${c3016_date_id_day_of_week_index} = 2 then 'Weekday'
         when ${c3016_date_id_day_of_week_index} = 3 then 'Weekday'
         when ${c3016_date_id_day_of_week_index} = 4 then 'Weekday'
         when ${c3016_date_id_day_of_week_index} = 5 then 'Weekend'
      END ;;
  }

  #  - dimension: c3016_durations
  #    type: number
  #    sql: ${TABLE}.c3016_durations

  dimension: c3016_edm {
    type: string
    sql: ${TABLE}.c3016_edm ;;
  }

  dimension: c3016_imp_type {
    type: string
    sql: ${TABLE}.c3016_imp_type ;;
  }

  dimension: c3016_imps {
    type: number
    sql: ${TABLE}.c3016_imps ;;
  }

  dimension: c3016_issueid {
    type: string
    sql: ${TABLE}.c3016_issueid ;;
  }

  dimension: c3016_language {
    type: string
    sql: ${TABLE}.c3016_language ;;
  }

  dimension: c3016_media {
    type: string
    sql: ${TABLE}.c3016_media ;;
  }

  dimension: c3016_menu {
    type: string
    sql: ${TABLE}.c3016_menu ;;
  }

  dimension: c3016_news {
    type: string
    sql: ${TABLE}.c3016_news ;;
  }

  dimension: c3016_platform {
    type: string
    sql: ${TABLE}.c3016_platform ;;
  }

  dimension: c3016_product {
    type: string
    sql: ${TABLE}.c3016_product ;;
  }

  #  sql_case:
  #    'Apple Daily': ${TABLE}.c3016_product  in ('Apple Daily', 'AppleDaily', 'ADAILY', 'Apple Daily TW', 'ADAILY-IPAD', 'Apple Daily-IPAD')
  #    'Next Magazine': ${TABLE}.c3016_product  in ('Next Magazine', 'NEXTMAG', 'Next Magazine TW', 'Next Magazine Video HK', 'NEXTPLUS')
  #    unknown: true

  dimension: c3016_region {
    type: string
    sql: ${TABLE}.c3016_region ;;
  }

  dimension: c3016_section {
    type: string
    sql: ${TABLE}.c3016_section ;;
  }

  dimension: c3016_site {
    type: string
    sql: ${TABLE}.c3016_site ;;
  }

  dimension: c3016_source {
    type: string
    sql: ${TABLE}.c3016_source ;;
  }

  dimension: c3016_subsection {
    type: string
    sql: ${TABLE}.c3016_subsection ;;
  }

  dimension: c3016_title {
    type: string
    sql: ${TABLE}.c3016_title ;;
  }

  #  - dimension: c3016_unique_users
  #    type: number
  #    sql: ${TABLE}.c3016_unique_users

  #  - dimension: c3016_visits
  #    type: number
  #    sql: ${TABLE}.c3016_visits

  measure: Impression_Sum {
    type: sum
    value_format: "[>=1000000]0.0,,\"M\";[>=1000]0.0,\"K\";0"
    sql: ${c3016_imps} ;;
  }

  measure: distinct_cid {
    type: count_distinct
    value_format: "[>=1000000]0.0,,\"M\";[>=1000]0.0,\"K\";0"
    sql: ${c3016_cid} ;;
#    approximate: yes
  }

  measure: distinct_artid {
    type: count_distinct
    value_format: "[>=1000000]0.0,,\"M\";[>=1000]0.0,\"K\";0"
    sql: ${c3016_artid} ;;
#    approximate: yes
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
