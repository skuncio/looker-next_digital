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
  sql_always_where: ${lat} != 0 and ${lon} != 0 and ${view_type} = 'VIDEOVIEW'
  
- explore: contentview_page  
  label: 4) Page Views - Detail
  view_label: Page Views
  sql_always_where: ${view_type} = 'PAGEVIEW'
  
- explore: view_aggregate 
  label: 1) All Content Views - Summary
  view_label: Summary Views

- explore: view_agg_with_article
  label: 2) Articles - Summary
  view_label: Article Views - Summary

- explore: dashboard_headers
  label: 6) Dashboard Headers
  hidden: true
  

- explore: t3016_seg_agg_cid_day 
  label: 6) CID 
  view_label: CID Views
  
# - explore: user_crossref

