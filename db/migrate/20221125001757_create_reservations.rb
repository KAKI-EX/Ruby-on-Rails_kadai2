class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.integer :user_id
      t.integer :post_id
      t.datetime :check_in
      t.datetime :check_out
      t.integer :stay_count
      t.integer :peaple_count
      t.integer :room_fee

      t.timestamps
    end
  end
end
