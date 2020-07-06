view: pages {
  derived_table: {
    persist_for: "12 hours"
    sql:
      with t as (
        select id, anonymous_id, received_at,
          row_number() over (partition by id order by loaded_at desc) as rn
        from @{segment_schema_name}.pages
      )
      select *
      from t
      where rn = 1
    ;;
  }


  #
  # KEYS
  #

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: anonymous_id {
    type: string
    sql: ${TABLE}.anonymous_id ;;
  }


  #
  # DIMENSIONS
  #

  dimension_group: received {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.received_at ;;
  }


  #
  # MEASURES
  #

  measure: count {
    type: count
  }
}
