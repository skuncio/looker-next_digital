
- view: sql_users_both_age_gender
  derived_table:
    sql: |
      select COUNT(distinct  c.c8001_nxtu_or_did)  
      from 
          (select c8014_nxtu_or_did  from t8014_user_campaign where c8014_age_group is not null) a,
          (select c8014_nxtu_or_did from t8014_user_campaign where (t8014_user_campaign.c8014_gender = 'F' OR t8014_user_campaign.c8014_gender = 'M')) b, 
          t8001_user_crossref c where a.c8014_nxtu_or_did = b.c8014_nxtu_or_did and a.c8014_nxtu_or_did = c.c8001_nxtu_or_did

  fields:
  - dimension: count
    type: number
    sql: ${TABLE}.count

  sets:
    detail:
      - count

