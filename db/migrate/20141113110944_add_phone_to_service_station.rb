class AddPhoneToServiceStation < ActiveRecord::Migration
  def change
    add_column :service_stations, :office_phone, :string
    add_column :service_stations, :mobile_phone, :string
  end
end
