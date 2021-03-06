view: sql_users_both_age_gender {
  derived_table: {
    sql: select TO_DATE(c.C8001_last_activity_date) as c8001_last_activity_date  ,
             COUNT(distinct  c.c8001_nxtu_or_did) as user_count
      from
          (select c8014_nxtu_or_did  from t8014_user_campaign where c8014_age_group is not null) a,
          (select c8014_nxtu_or_did from t8014_user_campaign where (t8014_user_campaign.c8014_gender = 'F' OR t8014_user_campaign.c8014_gender = 'M')) b,
          t8001_user_crossref c
      where a.c8014_nxtu_or_did = b.c8014_nxtu_or_did
        and a.c8014_nxtu_or_did = c.c8001_nxtu_or_did
      group by 1
      order by 1 asc
 ;;
  }

  dimension: c8001_last_activity_date {
    type: date
    convert_tz: no
    sql: ${TABLE}.c8001_last_activity_date ;;
  }

  dimension: user_count {
    type: number
    sql: ${TABLE}.user_count ;;
  }

  measure: total_count {
    type: sum
    sql: ${user_count} ;;
  }

#  set: detail {
#    fields: [c8001_last_activity_date, count]
#  }
}
