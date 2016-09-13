- connection: next_prd_redshift

- include: "*.view.lookml"       # include all views in this project
- include: "*.dashboard.lookml"  # include all dashboards in this project


- explore: contentview
  label: 3) All Content Views - Detail
  view_label: All Content Views
  joins:
      - join: content
        view_label: All Content Views
        sql_on: ${contentview.cid} = ${content.cid}
        relationship: many_to_one
        type: left_outer
        
# - explore: content     
#   view_label: Content

- explore: contentview_video      
  label: 5) Video Views - Detail
  view_label: Video Views
  sql_always_where:  ${view_type} = 'VIDEOVIEW'
#  sql_always_where: ${lat} != 0 and ${lon} != 0 and ${view_type} = 'VIDEOVIEW'
  
- explore: contentview_page  
  label: 4) Page Views - Detail
  view_label: Page Views
  sql_always_where: ${view_type} = 'PAGEVIEW'
  
- explore: view_aggregate 
  label: 2) Content & Users - Summary
  view_label: Content & Users

- explore: view_agg_with_article
  label: 1) Articles & Videos - Summary
  view_label: Article & Video Views - Summary
  joins:
      - join: t4003_animated_cid
        view_label: Animated Indicator
        sql_on: ${looker_scratch.lr$axcytyhekknu5gggzvk3e_view_agg_with_article.c8002_cid} = ${t4003_animated_cid.c4003_cid} 
        relationship: many_to_one
        type: left_outer
      - join: t1016_cid_title
        view_label: Most Used Title
        sql_on: ${looker_scratch.lr$axcytyhekknu5gggzvk3e_view_agg_with_article.c8002_cid} = ${t1016_cid_title.c1016_cid} 
        relationship: many_to_one
        type: left_outer  

- explore: dashboard_headers
  label: 8) Dashboard Headers
  hidden: true
  

- explore: t3016_seg_agg_cid_day 
  label: 6) Content ID Views (by Imp Type)
  view_label: CID Views
  joins:
      - join: t4003_animated_cid
        view_label: Animated Indicator
        sql_on: ${t3016_seg_agg_cid_day.c3016_cid} = ${t4003_animated_cid.c4003_cid} and ${t3016_seg_agg_cid_day.c3016_imp_type} = ${t4003_animated_cid.c4003_imp_type}
        relationship: many_to_one
        type: left_outer
      - join: t1016_cid_title
        view_label: Most Used Title
        sql_on: ${t3016_seg_agg_cid_day.c3016_cid} = ${t1016_cid_title.c1016_cid} and ${t3016_seg_agg_cid_day.c3016_imp_type} = ${t1016_cid_title.c1016_imp_type}
        relationship: many_to_one
        type: left_outer
  
- explore: view_agg_with_article_video
  label: 7) Animated Video Views - Summary
  view_label: Animated Video Views - Summary
#  sql_always_where:  ${c8002_action} = 'VIDEOVIEW'
  joins:
      - join: t4003_animated_cid
        view_label: Animated Video 
        sql_on: ${view_agg_with_article_video.c8002_cid} = ${t4003_animated_cid.c4003_cid}
        relationship: many_to_one
        type: left_outer
      - join: t1016_cid_title
        view_label: Most Used Title
        sql_on: ${view_agg_with_article_video.c8002_cid} = ${t1016_cid_title.c1016_cid} 
        relationship: many_to_one
        type: left_outer        

        
  
# - explore: user_crossref

