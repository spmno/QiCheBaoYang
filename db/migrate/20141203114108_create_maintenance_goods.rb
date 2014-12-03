class CreateMaintenanceGoods < ActiveRecord::Migration
  def change
    create_table :maintenance_goods do |t|
      t.string :name
      t.string :photo
      t.string :link

      t.timestamps
    end
  end
end
