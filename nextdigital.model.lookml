- connection: next_dev_redshift

- include: "*.view.lookml"       # include all views in this project
- include: "*.dashboard.lookml"  # include all dashboards in this project


- explore: contentview
  label: 2) All Content Views - Detail
  view_label: All Content Views
  joins:
      - join: content
        view_label: All Content Views
        sql_on: ${contentview.cid} = ${content.cid}
        relationship: many_to_one
        type: left_outer
        
# - explore: content     
#   view_label: Content

- explore: video_pdt     
  label: 4) Video Views - Detail
  view_label: Video Views
  sql_always_where: ${lat} != 0 and ${lon} != 0
  
- explore: page_pdt   
  label: 3) Page Views - Detail
  view_label: Page Views
  
- explore: view_aggregate 
  label: 1) All Content Views - Summary
  view_label: Summary Views

- explore: view_agg_with_article


# - explore: user_crossref

