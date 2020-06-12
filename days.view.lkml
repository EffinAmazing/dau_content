view: days {
  derived_table: {
    sql_trigger_value: select current_date() ;;
    sql:
    --generate a list of dates for the cross join
      select day
      from unnest(generate_date_array('2020-01-01', current_date(), interval 1 day)) AS day
    ;;
  }

  dimension: day {
    type: date
    sql: ${TABLE}.day ;;
  }

}
