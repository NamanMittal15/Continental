# The name of this view in Looker is "Tbl Driver Details"
view: tbl_driver_details {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `TEST_1.tbl_driver_details`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Driver ID" in Explore.

  dimension: driver_id {
    type: string
    sql: ${TABLE}.Driver_ID ;;
  }

  dimension: driver_lisence_expiry {
    type: string
    sql: ${TABLE}.Driver_Lisence_Expiry ;;
  }

  dimension: driver_lisence_number {
    type: string
    sql: ${TABLE}.Driver_Lisence_Number ;;
  }

  dimension: driver_lisence_type {
    type: string
    sql: ${TABLE}.Driver_Lisence_Type ;;
  }

  dimension: email_id {
    type: string
    sql: ${TABLE}.Email_ID ;;
  }

  dimension: employment_status {
    type: string
    sql: ${TABLE}.Employment_Status ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.First_Name ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.Last_Name ;;
  }

  dimension: mobile {
    type: number
    sql: ${TABLE}.Mobile ;;
  }

  dimension: region_id {
    type: number
    sql: ${TABLE}.Region_ID ;;
  }

  dimension: start_date {
    type: string
    sql: ${TABLE}.Start_Date ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are count, sum, and average
  # measures for numeric dimensions, but you can also add measures of many different types.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: count {
    type: count
    drill_fields: [first_name, last_name]
  }

  # These sum and average measures are hidden by default.
  # If you want them to show up in your explore, remove hidden: yes.

  measure: total_mobile {
    type: sum
    hidden: yes
    sql: ${mobile} ;;
  }

  measure: average_mobile {
    type: average
    hidden: yes
    sql: ${mobile} ;;
  }
}
