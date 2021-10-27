# The name of this view in Looker is "Tbl Region"
view: tbl_region {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `TEST_1.tbl_region`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "City" in Explore.

  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: humidity {
    type: number
    sql: ${TABLE}.Humidity ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.Latitude ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.Longitude ;;
  }

  dimension: precipitation {
    type: number
    sql: ${TABLE}.Precipitation ;;
  }

  dimension: region_id {
    type: number
    sql: ${TABLE}.Region_ID ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
  }

  dimension: visibility {
    type: number
    sql: ${TABLE}.Visibility ;;
  }

  dimension: weather {
    type: string
    sql: ${TABLE}.Weather ;;
  }

  dimension: wind {
    type: number
    sql: ${TABLE}.Wind ;;
  }

  dimension: zip {
    type: zipcode
    sql: ${TABLE}.ZIP ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are count, sum, and average
  # measures for numeric dimensions, but you can also add measures of many different types.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: count {
    type: count
    drill_fields: []
  }

  # These sum and average measures are hidden by default.
  # If you want them to show up in your explore, remove hidden: yes.

  measure: total_humidity {
    type: sum
    hidden: yes
    sql: ${humidity} ;;
  }

  measure: average_humidity {
    type: average
    hidden: yes
    sql: ${humidity} ;;
  }

  measure: total_latitude {
    type: sum
    hidden: yes
    sql: ${latitude} ;;
  }

  measure: average_latitude {
    type: average
    hidden: yes
    sql: ${latitude} ;;
  }

  measure: total_longitude {
    type: sum
    hidden: yes
    sql: ${longitude} ;;
  }

  measure: average_longitude {
    type: average
    hidden: yes
    sql: ${longitude} ;;
  }

  measure: total_precipitation {
    type: sum
    hidden: yes
    sql: ${precipitation} ;;
  }

  measure: average_precipitation {
    type: average
    hidden: yes
    sql: ${precipitation} ;;
  }

  measure: total_visibility {
    type: sum
    hidden: yes
    sql: ${visibility} ;;
  }

  measure: average_visibility {
    type: average
    hidden: yes
    sql: ${visibility} ;;
  }

  measure: total_wind {
    type: sum
    hidden: yes
    sql: ${wind} ;;
  }

  measure: average_wind {
    type: average
    hidden: yes
    sql: ${wind} ;;
  }
}
