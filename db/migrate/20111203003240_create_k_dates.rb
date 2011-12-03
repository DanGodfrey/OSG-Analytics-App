class CreateKDates < ActiveRecord::Migration
  def change
    create_table :k_dates do |t|
      t.integer :date_key
      t.string :fulldate
      t.string :date_name
      t.integer :day_of_week
      t.string :day_name_of_week
      t.integer :day_of_month
      t.string :weekday_weekend
      t.integer :week_of_year
      t.string :month_name
      t.integer :month_of_year
      t.string :is_last_day_of_month
      t.integer :calendar_quarter
      t.integer :calendar_year
      t.string :calendar_year_month
      t.string :calendar_year_quarter
      t.integer :financial_month_of_year
      t.integer :financial_quarter
      t.integer :fiscal_year
      t.string :fiscal_year_month
      t.string :fiscal_year_quarter

      t.timestamps
    end
  end
end
