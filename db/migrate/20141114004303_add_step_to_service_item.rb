class AddStepToServiceItem < ActiveRecord::Migration
  def change
    add_column :service_items, :step, :integer
  end
end
