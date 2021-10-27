# The name of this view in Looker is "Tbl Trip Events"
view: tbl_trip_events {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `TEST_1.tbl_trip_events`
    ;;
  drill_fields: [id]
  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Air Temperature" in Explore.

  dimension: air_temperature {
    type: string
    sql: ${TABLE}.Air_Temperature ;;
  }

  dimension: battery_health {
    type: number
    sql: ${TABLE}.Battery_Health ;;
  }

  dimension: battery_voltage {
    type: number
    sql: ${TABLE}.Battery_Voltage ;;
  }

  dimension: current_latitude {
    type: string
    sql: ${TABLE}.Current_Latitude ;;
  }

  dimension: current_longitude {
    type: string
    sql: ${TABLE}.Current_Longitude ;;
  }

  dimension: current_mileage {
    type: number
    sql: ${TABLE}.Current_Mileage ;;
  }

  dimension: engine_temperature {
    type: number
    sql: ${TABLE}.Engine_Temperature ;;
  }

  dimension: event_duration {
    type: number
    sql: ${TABLE}.Event_Duration ;;
  }

  dimension: event_type {
    type: string
    sql: ${TABLE}.Event_Type ;;
  }

  dimension: fuel_level {
    type: number
    sql: ${TABLE}.Fuel_Level ;;
  }

  dimension: load_type {
    type: string
    sql: ${TABLE}.Load_Type ;;
  }

  dimension: load_weight {
    type: number
    sql: ${TABLE}.Load_Weight ;;
  }

  dimension: trip_id {
    type: string
    sql: ${TABLE}.Trip_ID ;;
  }

  dimension: vehicle_speed {
    type: number
    sql: ${TABLE}.Vehicle_Speed ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are count, sum, and average
  # measures for numeric dimensions, but you can also add measures of many different types.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: count {
    type: count
    drill_fields: [id]
  }

  # These sum and average measures are hidden by default.
  # If you want them to show up in your explore, remove hidden: yes.

  measure: total_battery_health {
    type: sum
    hidden: yes
    sql: ${battery_health} ;;
  }

  measure: average_battery_health {
    type: average
    hidden: yes
    sql: ${battery_health} ;;
  }

  measure: total_battery_voltage {
    type: sum
    hidden: yes
    sql: ${battery_voltage} ;;
  }

  measure: average_battery_voltage {
    type: average
    hidden: yes
    sql: ${battery_voltage} ;;
  }

  measure: total_current_mileage {
    type: sum
    hidden: yes
    sql: ${current_mileage} ;;
  }

  measure: average_current_mileage {
    type: average
    hidden: yes
    sql: ${current_mileage} ;;
  }

  measure: total_engine_temperature {
    type: sum
    hidden: yes
    sql: ${engine_temperature} ;;
  }

  measure: average_engine_temperature {
    type: average
    hidden: yes
    sql: ${engine_temperature} ;;
  }

  measure: total_event_duration {
    type: sum
    hidden: yes
    sql: ${event_duration} ;;
  }

  measure: average_event_duration {
    type: average
    hidden: yes
    sql: ${event_duration} ;;
  }

  measure: total_fuel_level {
    type: sum
    hidden: yes
    sql: ${fuel_level} ;;
  }

  measure: average_fuel_level {
    type: average
    hidden: yes
    sql: ${fuel_level} ;;
  }

  measure: total_load_weight {
    type: sum
    hidden: yes
    sql: ${load_weight} ;;
  }

  measure: average_load_weight {
    type: average
    hidden: yes
    sql: ${load_weight} ;;
  }

  measure: total_vehicle_speed {
    type: sum
    hidden: yes
    sql: ${vehicle_speed} ;;
  }

  measure: average_vehicle_speed {
    type: average
    hidden: yes
    sql: ${vehicle_speed} ;;
  }
}
