- connection: next_dev_redshift

- include: "*.view.lookml"       # include all views in this project
- include: "*.dashboard.lookml"  # include all dashboards in this project


- explore: contentview
  joins:
      - join: content
        sql_on: ${contentview.cid} = ${content.cid}
        relationship: many_to_one
        type: left_outer
        
- explore: content     
  view_label: Content

- explore: video_pdt     
  view_label: Video Views
  sql_always_where: ${lat} != 0 and ${lon} != 0
  
- explore: page_pdt     
  view_label: Page Views
  
- explore: view_aggregate 

- explore: user_crossref

