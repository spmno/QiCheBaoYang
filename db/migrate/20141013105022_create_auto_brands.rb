class CreateAutoBrands < ActiveRecord::Migration
  def change
    create_table :auto_brands do |t|
      t.string :name
      t.string :auto_brand_photo

      t.timestamps
    end
  end
end
