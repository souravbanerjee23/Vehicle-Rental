class CreateVehicles < ActiveRecord::Migration[6.1]
  def change
    create_table :vehicles do |t|
      t.string :vehicle_no
      t.string :type
      t.integer :capacity
      t.string :start_time
      t.string :end_time

      t.timestamps
    end
  end
end
