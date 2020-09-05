include: "/Model/atom_fashion.model.lkml"

# Place in `atom_fashion` model
explore: +order_items {
  aggregate_table: rollup__created_date {
    query: {
      dimensions: [
        order_items.created_date,
        products.brand,
        products.category,
        created_date
      ]
      measures: [order_count, total_sale_price]
#       timezone: "America/Los_Angeles"
    }

    materialization: {
      datagroup_trigger: every_day
    }
  }
}


# Place in `atom_fashion` model
explore: +order_items {
  aggregate_table: rollup__created_date__created_month__created_week__products_brand__products_category__products_category_type__users_city__users_country__users_state {
    query: {
      dimensions: [
        # "order_items.created_date" is automatically filtered on in an access_filter.
        # Uncomment to allow all possible filters to work with aggregate awareness.
        # order_items.created_date,
        # "products.brand" is automatically filtered on in an access_filter.
        # Uncomment to allow all possible filters to work with aggregate awareness.
        # products.brand,
        created_date,
        created_month,
        created_week,
        products.brand,
        products.category,
        products.category_type,
        users.city,
        users.country,
        users.state
      ]
      measures: [total_sale_price, total_tax_amount]
      filters: [
        # "order_items.created_date" is automatically filtered on in an access_filter in this query.
        # Remove this filter to allow all possible filters to work with aggregate awareness.
        order_items.created_date: "last 90 days",
        # "products.brand" is automatically filtered on in an access_filter in this query.
        # Remove this filter to allow all possible filters to work with aggregate awareness.
        products.brand: "%",
        order_items.created_date: "6 months"
      ]
    }

    materialization: {
      datagroup_trigger: every_day
    }
  }
}
