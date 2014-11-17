class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.integer :user_id
      t.float :amount
      t.integer :user_point

      t.timestamps
    end
  end
end
