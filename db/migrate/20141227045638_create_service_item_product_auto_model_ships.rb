class CreateServiceItemProductAutoModelShips < ActiveRecord::Migration
  def change
    create_table :service_item_product_auto_model_ships do |t|
      t.integer :service_item_product_id
      t.integer :auto_model_id

      t.timestamps
    end
  end
end
