- view: t8014_user_campaign
  sql_table_name: public.t8014_user_campaign
  fields:

  - dimension: c8014_action
    type: string
    sql: ${TABLE}.c8014_action

  - dimension: c8014_address
    type: string
    sql: ${TABLE}.c8014_address

  - dimension: c8014_adid
    type: string
    sql: ${TABLE}.c8014_adid

  - dimension: c8014_cpid
    type: string
    sql: ${TABLE}.c8014_cpid

  - dimension: c8014_cpreg
    type: string
    sql: ${TABLE}.c8014_cpreg

  - dimension_group: c8014_datetime
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.c8014_datetime

  - dimension: c8014_did
    type: string
    sql: ${TABLE}.c8014_did

  - dimension: c8014_email
    type: string
    sql: ${TABLE}.c8014_email

  - dimension: c8014_gender
    type: string
    sql: ${TABLE}.c8014_gender

  - dimension: c8014_gigyaid
    type: string
    sql: ${TABLE}.c8014_gigyaid

  - dimension: c8014_nxtu_did
    type: string
    sql: ${TABLE}.c8014_nxtu_did

  - dimension: c8014_phone
    type: string
    sql: ${TABLE}.c8014_phone

  - dimension: c8014_platform
    type: string
    sql: ${TABLE}.c8014_platform

  - dimension: c8014_usrc
    type: string
    sql: ${TABLE}.c8014_usrc

  - measure: count
    type: count
    drill_fields: []

