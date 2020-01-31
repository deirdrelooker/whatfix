view: account {
  sql_table_name: accounts.account ;;
  drill_fields: [account_id]

  dimension: account_id {
    primary_key: yes
    type: number
    sql: ${TABLE}."account_id" ;;
  }

  dimension: archived {
    type: yesno
    sql: ${TABLE}."archived" ;;
  }

  dimension: config {
    hidden:  yes
    type: string
    sql: ${TABLE}."config" ;;
  }

  dimension: url {
    type: yesno
    sql: config#>'{account_details,user_essentials,companyWebsiteUrl}'
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

  dimension: id {
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: old_config {
    type: string
    sql: ${TABLE}."old_config" ;;
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

  measure: count {
    type: count
    drill_fields: [account_id]
  }
}
