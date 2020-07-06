view: daily_visitors {
  derived_table: {
    sql:
      with
      daily_visitor_activity as (
      --roll up all activity to one row per day for each visitor (when they are active on that day)
        select
          anonymous_id,
          date(received_at) as day
        from ${pages.SQL_TABLE_NAME}
        --filter here
        group by 1, 2
      ),
      active_visitors as (
      --create table of unique visitors
        select
          anonymous_id,
          min(day) as first_active_day,
          max(day) as last_active_day
        from daily_visitor_activity
        group by 1
      ),
      daily_visitor_matrix as (
      --create one row per visitor/day combination using a cross join
        select
          d.day,
          v.anonymous_id,
          v.first_active_day,
          v.last_active_day,
          date_diff(d.day, v.first_active_day, day) as days_since_first_active
        from ${days.SQL_TABLE_NAME} as d, active_visitors as v
        where d.day >= v.first_active_day
      )
      --join all activity to daily visitor matrix to assign days_since_last_active
        select
          d.day,
          d.anonymous_id,
          d.first_active_day,
          d.last_active_day,
          d.days_since_first_active,
          min(date_diff(d.day, a.day, day)) as days_since_last_active,
          count(distinct case when date_diff(d.day, a.day, day) < 7 then a.day end) as days_active_7d_window,
          count(distinct case when date_diff(d.day, a.day, day) < 28 then a.day end) as days_active_28d_window
        from daily_visitor_matrix as d
          left join daily_visitor_activity a on a.anonymous_id = d.anonymous_id
        where a.day <= d.day
        group by 1,2,3,4,5
    ;;
  }


  #
  # KEYS
  #

  dimension: pk {
    hidden: yes
    primary_key: yes
    sql: concat(cast(${day} as string), ${anonymous_id}) ;;
  }

  dimension: anonymous_id {
    type: string
    sql: ${TABLE}.anonymous_id ;;
  }


  #
  # DIMENSIONS
  #

  dimension: day {
    type: date
    sql: timestamp(${TABLE}.day) ;;
  }

  dimension_group: first_active {
    timeframes: [date, week, month]
    type: time
    sql: timestamp(${TABLE}.first_active_day) ;;
  }

  dimension_group: last_active {
    timeframes: [date, week, month]
    type: time
    sql: timestamp(${TABLE}.last_active_day) ;;
  }

  dimension: days_since_first_active {
    type: number
    sql: ${TABLE}.days_since_first_active ;;
  }

  dimension: 7_day_windows_since_first_active {
    type: number
    sql: floor(${days_since_first_active}/7.00) ;;
  }

  dimension: 28_day_windows_since_first_active {
    type: number
    sql: floor(${days_since_first_active}/28.00) ;;
  }

  dimension: days_since_last_active {
    type: number
    sql: ${TABLE}.days_since_last_active ;;
  }

  dimension: days_active_7d_window {
    type: number
    sql: ${TABLE}.days_active_7d_window ;;
  }

  dimension: days_active_28d_window {
    type: number
    sql: ${TABLE}.days_active_28d_window ;;
  }

  dimension: days_active_28d_tier {
    type: tier
    style: integer
    tiers: [1,2,3,7,14,21]
    sql: ${days_active_28d_window} ;;
  }


  #
  # MEASURES
  #

  measure: count_visitors {
    type: count_distinct
    drill_fields: [details*]
    sql: ${anonymous_id} ;;
  }

  measure: daily_active_visitors {
    type: count_distinct
    drill_fields: [details*]
    sql: ${anonymous_id} ;;
    filters: {
      field: days_since_last_active
      value: "0"
    }
  }

  measure: weekly_active_visitors {
    type: count_distinct
    drill_fields: [details*]
    sql: ${anonymous_id} ;;
    filters: {
      field: days_since_last_active
      value: "<7"
    }
  }

  measure: monthly_active_visitors {
    type: count_distinct
    drill_fields: [details*]
    sql: ${anonymous_id} ;;
    filters: {
      field: days_since_last_active
      value: "<28"
    }
  }

  measure: new_daily_active_visitors {
    type: count_distinct
    drill_fields: [details*]
    sql: ${anonymous_id} ;;
    filters: {
      field: days_since_last_active
      value: "0"
    }
    filters: {
      field: days_since_first_active
      value: "0"
    }
  }

  measure: new_weekly_active_visitors {
    type: count_distinct
    drill_fields: [details*]
    sql: ${anonymous_id} ;;
    filters: {
      field: days_since_last_active
      value: "<7"
    }
    filters: {
      field: days_since_first_active
      value: "<7"
    }
  }

  measure: new_monthly_active_visitors {
    type: count_distinct
    drill_fields: [details*]
    sql: ${anonymous_id} ;;
    filters: {
      field: days_since_last_active
      value: "<28"
    }
    filters: {
      field: days_since_first_active
      value: "<28"
    }
  }

  set: details {
    fields: [
      anonymous_id,
      day,
      first_active_date,
      last_active_date,
      days_active_7d_window,
      days_active_28d_window
      ]
  }

}
