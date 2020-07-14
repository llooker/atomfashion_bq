view: city_sales_tax {
  derived_table: {
    datagroup_trigger: ecommerce_etl
    sql: SELECT city, state, country, UNIFORM(0::float, 0.1::float, random()) as city_tax
      FROM ATOM.USERS
      group by 1,2,3
       ;;
  }

  dimension: city {
    hidden: yes
    type: string
    sql: ${TABLE}."CITY" ;;
  }

  dimension: state {
    hidden: yes
    type: string
    sql: ${TABLE}."STATE" ;;
  }

  dimension: country {
    hidden: yes
    type: string
    sql: ${TABLE}."COUNTRY" ;;
  }

  dimension: city_tax {
    type: number
    sql: ${TABLE}."CITY_TAX" ;;
  }
}
