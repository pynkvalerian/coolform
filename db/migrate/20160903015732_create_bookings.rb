class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
    	t.string :device
    	t.string :model
    	t.string :problem	
      t.timestamps
    end
  end
end
