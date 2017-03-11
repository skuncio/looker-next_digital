view: sql_runner_query_adid_analysis {
  derived_table: {
    sql: SELECT
        COUNT(distinct c8001_nxtu_or_did) AS "distinct nxtu or did",
        COUNT(distinct c8001_nxtu) AS "distinct nxtu (web)",
        COUNT(distinct c8001_did) AS "distinct did (mobile)",
        COUNT(distinct c8001_adid) AS "distinct adid"
      FROM public.t8001_user_crossref AS t8001_user_crossref
      where
      ((((t8001_user_crossref.c8001_last_activity_date) >= (TIMESTAMP '2016-06-07') AND (t8001_user_crossref.c8001_last_activity_date) < (TIMESTAMP '2016-06-14'))))

      ORDER BY 1 DESC
      LIMIT 500
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: distinct_nxtu_or_did {
    type: number
    label: "distinct nxtu or did"
    sql: ${TABLE}."distinct nxtu or did" ;;
  }

  dimension: distinct_nxtu_web {
    type: number
    label: "distinct nxtu (web)"
    sql: ${TABLE}."distinct nxtu (web)" ;;
  }

  dimension: distinct_did_mobile {
    type: number
    label: "distinct did (mobile)"
    sql: ${TABLE}."distinct did (mobile)" ;;
  }

  dimension: distinct_adid {
    type: number
    label: "distinct adid"
    sql: ${TABLE}."distinct adid" ;;
  }

  set: detail {
    fields: [distinct_nxtu_or_did, distinct_nxtu_web, distinct_did_mobile, distinct_adid]
  }
}
