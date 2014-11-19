class CreateCarMaintenanceInfos < ActiveRecord::Migration
  def change
    create_table :car_maintenance_infos do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
