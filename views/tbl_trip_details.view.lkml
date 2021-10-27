# The name of this view in Looker is "Tbl Trip Details"
view: tbl_trip_details {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `looker-testing-7343.TEST_1.tbl_trip_details`
    ;;
  drill_fields: [id]
  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.ID ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Actual End Date" in Explore.

  dimension: actual_end_date {
    type: string
    sql: ${TABLE}.Actual_End_Date ;;
  }

  dimension: current_battery_health_score {
    type: number
    sql: ${TABLE}.Current_Battery_Health_Score ;;
  }

  dimension: current_brake_wear_score {
    type: number
    sql: ${TABLE}.Current_Brake_wear_score ;;
  }

  dimension: destination_location_id {
    type: number
    sql: ${TABLE}.Destination_Location_ID ;;
  }

  dimension: driver_id {
    type: string
    sql: ${TABLE}.Driver_ID ;;
  }

  dimension: estimate_duration {
    type: number
    sql: ${TABLE}.Estimate_Duration ;;
  }

  dimension: expected_end_date {
    type: string
    sql: ${TABLE}.Expected_End_Date ;;
  }

  dimension: fuel_cost {
    type: number
    sql: ${TABLE}.Fuel_Cost ;;
  }

  dimension: harsh_accleration {
    type: number
    sql: ${TABLE}.Harsh_Accleration ;;
  }

  dimension: harsh_brake {
    type: yesno
    sql: ${TABLE}.Harsh_Brake ;;
  }

  dimension: harsh_cornering {
    type: number
    sql: ${TABLE}.Harsh_Cornering ;;
  }

  dimension: load_weight {
    type: number
    sql: ${TABLE}.Load_Weight ;;
  }

  dimension: region_id {
    type: number
    sql: ${TABLE}.Region_ID ;;
  }

  dimension: route {
    type: string
    sql: ${TABLE}.Route ;;
  }

  dimension: route_id {
    type: string
    sql: ${TABLE}.Route_ID ;;
  }

  dimension: start_date {
    type: string
    sql: ${TABLE}.Start_Date ;;
  }

  dimension: start_location_id {
    type: number
    sql: ${TABLE}.Start_Location_ID ;;
  }

  dimension: trip_distance {
    type: number
    sql: ${TABLE}.Trip_Distance ;;
  }

  dimension: trip_distance_tier {
    type: string
    sql: ${TABLE}.Trip_Distance_Tier ;;
  }

  dimension: tyre_pressure {
    type: number
    sql: ${TABLE}.Tyre_Pressure ;;
  }

  dimension: vehicle_id {
    type: string
    sql: ${TABLE}.Vehicle_ID ;;
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

  measure: total_current_battery_health_score {
    type: sum
    hidden: yes
    sql: ${current_battery_health_score} ;;
  }

  measure: average_current_battery_health_score {
    type: average
    hidden: yes
    sql: ${current_battery_health_score} ;;
  }

  measure: total_current_brake_wear_score {
    type: sum
    hidden: yes
    sql: ${current_brake_wear_score} ;;
  }

  measure: average_current_brake_wear_score {
    type: average
    hidden: yes
    sql: ${current_brake_wear_score} ;;
  }

  measure: total_estimate_duration {
    type: sum
    hidden: yes
    sql: ${estimate_duration} ;;
  }

  measure: average_estimate_duration {
    type: average
    hidden: yes
    sql: ${estimate_duration} ;;
  }

  measure: total_fuel_cost {
    type: sum
    hidden: yes
    sql: ${fuel_cost} ;;
  }

  measure: average_fuel_cost {
    type: average
    hidden: yes
    sql: ${fuel_cost} ;;
  }

  measure: total_harsh_accleration {
    type: sum
    hidden: yes
    sql: ${harsh_accleration} ;;
  }

  measure: average_harsh_accleration {
    type: average
    hidden: yes
    sql: ${harsh_accleration} ;;
  }

  measure: total_harsh_cornering {
    type: sum
    hidden: yes
    sql: ${harsh_cornering} ;;
  }

  measure: average_harsh_cornering {
    type: average
    hidden: yes
    sql: ${harsh_cornering} ;;
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

  measure: total_trip_distance {
    type: sum
    hidden: yes
    sql: ${trip_distance} ;;
  }

  measure: average_trip_distance {
    type: average
    hidden: yes
    sql: ${trip_distance} ;;
  }

  measure: total_tyre_pressure {
    type: sum
    hidden: yes
    sql: ${tyre_pressure} ;;
  }

  measure: average_tyre_pressure {
    type: average
    hidden: yes
    sql: ${tyre_pressure} ;;
  }
}
