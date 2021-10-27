# The name of this view in Looker is "Tbl Vehicles"
view: tbl_vehicles {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `TEST_1.tbl_vehicles`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Region ID" in Explore.

  dimension: region_id {
    type: number
    sql: ${TABLE}.Region_ID ;;
  }

  dimension: start_of_service_date {
    type: string
    sql: ${TABLE}.Start_of_Service_Date ;;
  }

  dimension: total_kms_driven {
    type: number
    sql: ${TABLE}.Total_KMS_Driven ;;
  }

  dimension: vehicle_capacity {
    type: number
    sql: ${TABLE}.Vehicle_Capacity ;;
  }

  dimension: vehicle_driver_assigned {
    type: string
    sql: ${TABLE}.Vehicle_Driver_Assigned ;;
  }

  dimension: vehicle_health {
    type: string
    sql: ${TABLE}.Vehicle_Health ;;
  }

  dimension: vehicle_id {
    type: string
    sql: ${TABLE}.Vehicle_ID ;;
  }

  dimension: vehicle_last_service_date {
    type: string
    sql: ${TABLE}.Vehicle_Last_Service_Date ;;
  }

  dimension: vehicle_owner {
    type: string
    sql: ${TABLE}.Vehicle_Owner ;;
  }

  dimension: vehicle_permit {
    type: string
    sql: ${TABLE}.Vehicle_Permit ;;
  }

  dimension: vehicle_previous_driver_1 {
    type: string
    sql: ${TABLE}.Vehicle_Previous_Driver_1 ;;
  }

  dimension: vehicle_previous_driver_2 {
    type: string
    sql: ${TABLE}.Vehicle_Previous_Driver_2 ;;
  }

  dimension: vehicle_registration_number {
    type: string
    sql: ${TABLE}.Vehicle_Registration_Number ;;
  }

  dimension: vehicle_service_due_date {
    type: string
    sql: ${TABLE}.Vehicle_Service_Due_Date ;;
  }

  dimension: vehicle_type {
    type: string
    sql: ${TABLE}.Vehicle_Type ;;
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

  measure: total_total_kms_driven {
    type: sum
    hidden: yes
    sql: ${total_kms_driven} ;;
  }

  measure: average_total_kms_driven {
    type: average
    hidden: yes
    sql: ${total_kms_driven} ;;
  }

  measure: total_vehicle_capacity {
    type: sum
    hidden: yes
    sql: ${vehicle_capacity} ;;
  }

  measure: average_vehicle_capacity {
    type: average
    hidden: yes
    sql: ${vehicle_capacity} ;;
  }
}
