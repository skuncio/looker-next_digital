view: t8057_userprofile_age_gender {
  sql_table_name: PUBLIC.T8057_USERPROFILE_AGE_GENDER ;;

  dimension: c8057_age_group {
    type: string
  #  sql: ${TABLE}.C8057_AGE_GROUP ;;
    case: {
      when: {
        sql: ${TABLE}.C8057_AGE_GROUP = 0 ;;
        label: "<13"
      }

      when: {
        sql: ${TABLE}.C8057_AGE_GROUP = 1 ;;
        label: "13-17"
      }

      when: {
        sql: ${TABLE}.C8057_AGE_GROUP = 2 ;;
        label: "18-24"
      }

      when: {
        sql: ${TABLE}.C8057_AGE_GROUP = 3 ;;
        label: "25-34"
      }

      when: {
        sql: ${TABLE}.C8057_AGE_GROUP = 4 ;;
        label: "35-44"
      }

      when: {
        sql: ${TABLE}.C8025_AGE_GROUP = 5 ;;
        label: "45-54"
      }

      when: {
        sql: ${TABLE}.C8057_AGE_GROUP = 6 ;;
        label: "55-64"
      }

      when: {
        sql: ${TABLE}.C8057_AGE_GROUP = 7 ;;
        label: "64+"
      }

      when: {
        sql: true ;;
        label: "unknown"
      }
    }
  }

  dimension: c8057_gender {
    type: string
    sql: ${TABLE}.C8057_GENDER ;;
  }

  dimension: c8057_nxtuid {
    primary_key: yes
    type: string
    sql: ${TABLE}.C8057_NXTUID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: distinct_users {
  #  view_label: "User"
    type: count_distinct
    value_format: "#,##0"
  #  value_format: "[>=1000000]0.0,,\"M\";[>=1000]0.0,\"K\";0"
    sql: ${c8057_nxtuid} ;;
  }
}
