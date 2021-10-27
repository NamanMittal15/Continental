# The name of this view in Looker is "Tbl Trips Stats"
view: tbl_trips_stats {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `TEST_1.tbl_trips_stats`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Current Battery Health Score" in Explore.

  dimension: current_battery_health_score {
    type: number
    sql: ${TABLE}.Current_Battery_Health_Score ;;
  }

  dimension: current_brake_wear_score {
    type: number
    sql: ${TABLE}.Current_Brake_wear_score ;;
  }

  dimension: exceeded_speed_limit {
    type: yesno
    sql: ${TABLE}.Exceeded_Speed_Limit ;;
  }

  dimension: harsh_accleration_score {
    type: number
    sql: ${TABLE}.Harsh_Accleration_Score ;;
  }

  dimension: harsh_brake_score {
    type: number
    sql: ${TABLE}.Harsh_Brake_Score ;;
  }

  dimension: harsh_cornering_score {
    type: number
    sql: ${TABLE}.Harsh_Cornering_Score ;;
  }

  dimension: trip_id {
    type: string
    sql: ${TABLE}.Trip_ID ;;
  }

  dimension: violation {
    type: yesno
    sql: ${TABLE}.Violation ;;
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

  measure: total_harsh_accleration_score {
    type: sum
    hidden: yes
    sql: ${harsh_accleration_score} ;;
  }

  measure: average_harsh_accleration_score {
    type: average
    hidden: yes
    sql: ${harsh_accleration_score} ;;
  }

  measure: total_harsh_brake_score {
    type: sum
    hidden: yes
    sql: ${harsh_brake_score} ;;
  }

  measure: average_harsh_brake_score {
    type: average
    hidden: yes
    sql: ${harsh_brake_score} ;;
  }

  measure: total_harsh_cornering_score {
    type: sum
    hidden: yes
    sql: ${harsh_cornering_score} ;;
  }

  measure: average_harsh_cornering_score {
    type: average
    hidden: yes
    sql: ${harsh_cornering_score} ;;
  }
}
