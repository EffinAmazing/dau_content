- dashboard: content_daily_active_dashboard
  title: Content Daily Active Dashboard
  layout: newspaper
  elements:
  - title: Visitors yesterday
    name: Visitors yesterday
    model: content_engagement
    explore: daily_visitors
    type: single_value
    fields: [daily_visitors.daily_active_visitors, daily_visitors.day]
    fill_fields: [daily_visitors.day]
    filters: {}
    sorts: [daily_visitors.day desc]
    limit: 500
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    listen:
      Date: daily_visitors.day
    row: 0
    col: 0
    width: 4
    height: 4
  - title: Visitors past 7d
    name: Visitors past 7d
    model: content_engagement
    explore: daily_visitors
    type: single_value
    fields: [daily_visitors.day, daily_visitors.weekly_active_visitors]
    fill_fields: [daily_visitors.day]
    filters: {}
    sorts: [daily_visitors.day desc]
    limit: 500
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    listen:
      Date: daily_visitors.day
    row: 0
    col: 4
    width: 4
    height: 4
  - title: Visitors past 28d
    name: Visitors past 28d
    model: content_engagement
    explore: daily_visitors
    type: single_value
    fields: [daily_visitors.day, daily_visitors.monthly_active_visitors]
    fill_fields: [daily_visitors.day]
    filters: {}
    sorts: [daily_visitors.day desc]
    limit: 500
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    listen:
      Date: daily_visitors.day
    row: 0
    col: 8
    width: 4
    height: 4
  - title: New Visitors yesterday
    name: New Visitors yesterday
    model: content_engagement
    explore: daily_visitors
    type: single_value
    fields: [daily_visitors.day, daily_visitors.new_daily_active_visitors]
    fill_fields: [daily_visitors.day]
    filters: {}
    sorts: [daily_visitors.day desc]
    limit: 500
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    listen:
      Date: daily_visitors.day
    row: 0
    col: 12
    width: 4
    height: 4
  - title: New Visitors past 7d
    name: New Visitors past 7d
    model: content_engagement
    explore: daily_visitors
    type: single_value
    fields: [daily_visitors.day, daily_visitors.new_weekly_active_visitors]
    fill_fields: [daily_visitors.day]
    filters: {}
    sorts: [daily_visitors.day desc]
    limit: 500
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    listen:
      Date: daily_visitors.day
    row: 0
    col: 16
    width: 4
    height: 4
  - title: New Visitors past 28d
    name: New Visitors past 28d
    model: content_engagement
    explore: daily_visitors
    type: single_value
    fields: [daily_visitors.day, daily_visitors.new_monthly_active_visitors]
    fill_fields: [daily_visitors.day]
    filters: {}
    sorts: [daily_visitors.day desc]
    limit: 500
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    listen:
      Date: daily_visitors.day
    row: 0
    col: 20
    width: 4
    height: 4
  - title: Daily, Weekly, Monthly Visitors
    name: Daily, Weekly, Monthly Visitors
    model: content_engagement
    explore: daily_visitors
    type: looker_line
    fields: [daily_visitors.day, daily_visitors.daily_active_visitors, daily_visitors.weekly_active_visitors,
      daily_visitors.monthly_active_visitors]
    fill_fields: [daily_visitors.day]
    filters: {}
    sorts: [daily_visitors.day desc]
    limit: 500
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
      options:
        steps: 5
    defaults_version: 1
    listen:
      Date: daily_visitors.day
    row: 4
    col: 0
    width: 12
    height: 7
  - title: New Daily, Weekly, Monthly Visitors
    name: New Daily, Weekly, Monthly Visitors
    model: content_engagement
    explore: daily_visitors
    type: looker_line
    fields: [daily_visitors.day, daily_visitors.new_daily_active_visitors, daily_visitors.new_weekly_active_visitors,
      daily_visitors.new_monthly_active_visitors]
    fill_fields: [daily_visitors.day]
    filters: {}
    sorts: [daily_visitors.day desc]
    limit: 500
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
      options:
        steps: 5
    defaults_version: 1
    listen:
      Date: daily_visitors.day
    row: 4
    col: 12
    width: 12
    height: 7
  - title: Engaged Visitors - Days on site in 7d window
    name: Engaged Visitors - Days on site in 7d window
    model: content_engagement
    explore: daily_visitors
    type: looker_area
    fields: [daily_visitors.days_active_7d_window, daily_visitors.day, daily_visitors.weekly_active_visitors]
    pivots: [daily_visitors.days_active_7d_window]
    fill_fields: [daily_visitors.day]
    filters:
      daily_visitors.days_active_7d_window: ">1"
    sorts: [daily_visitors.day desc, daily_visitors.days_active_7d_window]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: right
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
      options:
        steps: 5
    series_types: {}
    defaults_version: 1
    listen:
      Date: daily_visitors.day
    row: 11
    col: 0
    width: 12
    height: 7
  - title: Engaged Visitors - Days on site in 28d window
    name: Engaged Visitors - Days on site in 28d window
    model: content_engagement
    explore: daily_visitors
    type: looker_area
    fields: [daily_visitors.day, daily_visitors.monthly_active_visitors, daily_visitors.days_active_28d_tier]
    pivots: [daily_visitors.days_active_28d_tier]
    fill_fields: [daily_visitors.day]
    filters:
      daily_visitors.days_active_28d_tier: "-1,-Below 1"
    sorts: [daily_visitors.day desc, daily_visitors.days_active_28d_tier]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: right
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
      options:
        steps: 5
    series_types: {}
    defaults_version: 1
    listen:
      Date: daily_visitors.day
    row: 11
    col: 12
    width: 12
    height: 7
  - title: Returning Weekly Visitors X Weeks After 1st Visit
    name: Returning Weekly Visitors X Weeks After 1st Visit
    model: content_engagement
    explore: daily_visitors
    type: looker_line
    fields: [daily_visitors.7_day_windows_since_first_active, daily_visitors.first_active_week,
      daily_visitors.weekly_active_visitors]
    pivots: [daily_visitors.first_active_week]
    fill_fields: [daily_visitors.first_active_week]
    filters:
      daily_visitors.first_active_week: 8 weeks
    sorts: [daily_visitors.weekly_active_visitors desc 0, daily_visitors.first_active_week]
    limit: 500
    dynamic_fields: [{table_calculation: returning_visitors, label: Returning Visitors,
        expression: "${daily_visitors.weekly_active_visitors}/max(${daily_visitors.weekly_active_visitors})",
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: right
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
      options:
        steps: 5
    defaults_version: 1
    hidden_fields: [daily_visitors.weekly_active_visitors]
    listen: {}
    row: 18
    col: 0
    width: 12
    height: 7
  - title: Returning Monthly Visitors X Months After 1st Visit
    name: Returning Monthly Visitors X Months After 1st Visit
    model: content_engagement
    explore: daily_visitors
    type: looker_line
    fields: [daily_visitors.7_day_windows_since_first_active, daily_visitors.first_active_month,
      daily_visitors.monthly_active_visitors]
    pivots: [daily_visitors.first_active_month]
    fill_fields: [daily_visitors.first_active_month]
    filters:
      daily_visitors.first_active_month: 6 months
    sorts: [daily_visitors.monthly_active_visitors desc 0, daily_visitors.first_active_month]
    limit: 500
    dynamic_fields: [{table_calculation: returning_visitors, label: Returning Visitors,
        expression: "${daily_visitors.monthly_active_visitors}/max(${daily_visitors.monthly_active_visitors})",
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: right
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
      options:
        steps: 5
    defaults_version: 1
    hidden_fields: [daily_visitors.monthly_active_visitors]
    listen: {}
    row: 18
    col: 12
    width: 12
    height: 7
  filters:
  - name: Date
    title: Date
    type: field_filter
    default_value: 45 days ago for 45 days
    allow_multiple_values: true
    required: false
    model: content_engagement
    explore: daily_visitors
    listens_to_filters: []
    field: daily_visitors.day
