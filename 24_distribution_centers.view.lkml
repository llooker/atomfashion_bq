view: distribution_centers {
  sql_table_name: ecomm.distribution_centers ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }

  dimension: location {
    type: location
    sql_latitude: ${latitude} ;;
    sql_longitude: ${longitude} ;;
  }

  dimension: name {
    sql: ${TABLE}.name ;;
    link: {
      label: "Shipping Dashboard"
      url: "/dashboards/161?Distribution%20Center={{ value | encode_uri }}"
      icon_url: "https://www.evernote.com/l/An8ygmzU7MVBBoI3yUkTQgWXGg3ehAFh3ooB/image.png"
    }
  }

  measure: count {
    type: count
  }
}
