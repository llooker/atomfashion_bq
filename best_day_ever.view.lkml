view: best_day_ever {
  derived_table: {
    sql: select day
      from
      (select date_trunc('day',created_at) as day
      from ecomm.order_items
      group by 1
      order by sum(sale_price) desc
      limit 1)

      union all

      (select current_date as day)
       ;;
  }

  dimension_group: created {
    label: "Best Day"
    type: time
    timeframes: [date]
    sql: ${TABLE}."DAY" ;;
  }

}
