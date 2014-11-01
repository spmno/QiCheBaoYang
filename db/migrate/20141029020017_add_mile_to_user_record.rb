class AddMileToUserRecord < ActiveRecord::Migration
  def change
    add_column :user_records, :mile, :integer
  end
end
