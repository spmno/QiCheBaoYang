class CreateServiceItemProducts < ActiveRecord::Migration
  def change
    create_table :service_item_products do |t|
      t.string :name
      t.integer :service_item_id

      t.timestamps
    end
  end
end
