class DelAutoModelFromServiceItem < ActiveRecord::Migration
  def change
    remove_column :service_items, :auto_model_id
  end
end
