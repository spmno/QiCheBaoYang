class CreateUserRecords < ActiveRecord::Migration
  def change
    create_table :user_records do |t|
      t.integer :user_id
      t.integer :auto_model_id

      t.timestamps
    end
  end
end
