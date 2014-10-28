class AddPurchasingDateToUserRecord < ActiveRecord::Migration
  def change
    add_column :user_records, :purchasing_date, :date
  end
end
