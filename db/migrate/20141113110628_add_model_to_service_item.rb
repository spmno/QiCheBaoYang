class AddModelToServiceItem < ActiveRecord::Migration
  def change
    add_column :service_items, :auto_model_id, :integer
  end
end
