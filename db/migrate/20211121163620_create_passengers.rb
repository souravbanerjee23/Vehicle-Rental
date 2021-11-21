class CreatePassengers < ActiveRecord::Migration[6.1]
  def change
    create_table :passengers do |t|
      t.string :phone
      t.string :address
      t.string :email
      t.string :password
      t.string :user_id

      t.timestamps
    end
  end
end
