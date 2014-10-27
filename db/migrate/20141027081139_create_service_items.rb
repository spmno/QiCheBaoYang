class CreateServiceItems < ActiveRecord::Migration
  def change
    create_table :service_items do |t|
      t.string :name
      t.integer :duration1
      t.integer :duration2
      t.integer :mile

      t.timestamps
    end
  end
end
