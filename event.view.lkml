view: event {
  sql_table_name: analytics.event ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: account_id {
    type: number
    sql: ${TABLE}."account_id" ;;
  }

  dimension: anonymous_id {
    type: string
    sql: ${TABLE}."anonymous_id" ;;
  }

  dimension: browser {
    type: string
    sql: ${TABLE}."browser" ;;
  }

  dimension: browser_version {
    type: string
    sql: ${TABLE}."browser_version" ;;
  }

  dimension: channel {
    type: string
    sql: ${TABLE}."channel" ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}."created_at" ;;
  }

  dimension: device {
    type: string
    sql: ${TABLE}."device" ;;
  }

  dimension: device_brand {
    type: string
    sql: ${TABLE}."device_brand" ;;
  }

  dimension: device_model {
    type: string
    sql: ${TABLE}."device_model" ;;
  }

  dimension: event_json {
    type: string
    sql: ${TABLE}."event_json" ;;
  }

  dimension: event_message {
    type: string
    sql: ${TABLE}."event_message" ;;
  }

  dimension: event_name {
    type: string
    sql: ${TABLE}."event_name" ;;
  }

  dimension: event_obj {
    type: string
    sql: ${TABLE}."event_obj" ;;
  }

  dimension: event_obj_id {
    type: number
    sql: ${TABLE}."event_obj_id" ;;
  }

  dimension: event_type {
    type: string
    sql: ${TABLE}."event_type" ;;
  }

  dimension: event_value {
    type: string
    sql: ${TABLE}."event_value" ;;
  }

  dimension: ip {
    type: string
    sql: ${TABLE}."ip" ;;
  }

  dimension: is_local {
    type: yesno
    sql: ${TABLE}."is_local" ;;
  }

  dimension: is_mobile {
    type: yesno
    sql: ${TABLE}."is_mobile" ;;
  }

  dimension: is_touch {
    type: yesno
    sql: ${TABLE}."is_touch" ;;
  }

  dimension: locale {
    type: string
    sql: ${TABLE}."locale" ;;
  }

  dimension: message_id {
    type: string
    sql: ${TABLE}."message_id" ;;
  }

  dimension: os {
    type: string
    sql: ${TABLE}."os" ;;
  }

  dimension: os_version {
    type: string
    sql: ${TABLE}."os_version" ;;
  }

  dimension: page_title {
    type: string
    sql: ${TABLE}."page_title" ;;
  }

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
    sql: ${TABLE}."received_at" ;;
  }

  dimension: referrer {
    type: string
    sql: ${TABLE}."referrer" ;;
  }

  dimension: screen_height {
    type: number
    sql: ${TABLE}."screen_height" ;;
  }

  dimension: screen_size {
    type: string
    sql: ${TABLE}."screen_size" ;;
  }

  dimension: screen_width {
    type: number
    sql: ${TABLE}."screen_width" ;;
  }

  dimension_group: sent {
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
    sql: ${TABLE}."sent_at" ;;
  }

  dimension: session_id {
    type: string
    sql: ${TABLE}."session_id" ;;
  }

  dimension: session_num {
    type: number
    sql: ${TABLE}."session_num" ;;
  }

  dimension: timezone {
    type: string
    sql: ${TABLE}."timezone" ;;
  }

  dimension_group: updated {
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
    sql: ${TABLE}."updated_at" ;;
  }

  dimension: url_hash {
    type: string
    sql: ${TABLE}."url_hash" ;;
  }

  dimension: url_href {
    type: string
    sql: ${TABLE}."url_href" ;;
  }

  dimension: url_params {
    type: string
    sql: ${TABLE}."url_params" ;;
  }

  dimension: url_path {
    type: string
    sql: ${TABLE}."url_path" ;;
  }

  dimension: url_raw {
    type: string
    sql: ${TABLE}."url_raw" ;;
  }

  dimension: user_agent {
    type: string
    sql: ${TABLE}."user_agent" ;;
  }

  dimension: visitor_id {
    type: string
    sql: ${TABLE}."visitor_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, event_name]
  }
}
