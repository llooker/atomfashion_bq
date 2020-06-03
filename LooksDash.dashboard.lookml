- dashboard: looksdash
  title: LooksDash
  layout: newspaper
  elements:
  - name: Products Item Name Calvin Klein
    title: Products Item Name Calvin Klein
    model: atom_fashion
    explore: order_items
    type: table
    fields: [products.item_name]
    filters:
      products.brand: Calvin Klein
    sorts: [products.item_name]
    limit: 500
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    row: 0
    col: 0
    width: 8
    height: 6
  - name: Products by Brand
    title: Products by Brand
    model: atom_fashion
    explore: order_items
    type: table
    fields: [products.brand]
    sorts: [products.brand]
    limit: 500
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    row: 0
    col: 8
    width: 8
    height: 6
  - name: Product Item Name
    title: Product Item Name
    model: atom_fashion
    explore: order_items
    type: table
    fields: [products.item_name]
    sorts: [products.item_name]
    limit: 500
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    row: 0
    col: 16
    width: 8
    height: 6
  - name: Sales Calendar with Category
    title: Sales Calendar with Category
    model: atom_fashion
    explore: order_items
    type: table
    fields: [order_items.created_date, order_items.order_count, order_items.total_sale_price,
      products.category]
    sorts: [order_items.created_date desc]
    limit: 500
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    row: 6
    col: 0
    width: 8
    height: 6
  - name: Sales Calendar
    title: Sales Calendar
    model: atom_fashion
    explore: order_items
    type: table
    fields: [order_items.created_date, order_items.total_sale_price, order_items.order_count]
    fill_fields: [order_items.created_date]
    sorts: [order_items.created_date desc]
    limit: 500
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    row: 6
    col: 8
    width: 8
    height: 6
