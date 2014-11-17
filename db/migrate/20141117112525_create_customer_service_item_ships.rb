class CreateCustomerServiceItemShips < ActiveRecord::Migration
  def change
    create_table :customer_service_item_ships do |t|
      t.integer :customer_id
      t.integer :service_item_id

      t.timestamps
    end
  end
end
