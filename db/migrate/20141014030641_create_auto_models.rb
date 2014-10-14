class CreateAutoModels < ActiveRecord::Migration
  def change
    create_table :auto_models do |t|
      t.string :name
      t.string :auto_model_photo
      t.integer :auto_brand_id

      t.timestamps
    end
  end
end
