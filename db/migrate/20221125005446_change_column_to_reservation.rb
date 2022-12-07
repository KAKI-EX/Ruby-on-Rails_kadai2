class ChangeColumnToReservation < ActiveRecord::Migration[7.0]
  def change
    change_column :reservations, :user_id, :integer, null: false
    change_column :reservations, :post_id, :integer, null: false
    change_column :reservations, :check_in, :datetime, null: false
    change_column :reservations, :check_out, :datetime, null: false
    change_column :reservations, :stay_count, :integer, null: false
    change_column :reservations, :peaple_count, :integer, null: false
    change_column :reservations, :room_fee, :integer, null: false
  end
end
