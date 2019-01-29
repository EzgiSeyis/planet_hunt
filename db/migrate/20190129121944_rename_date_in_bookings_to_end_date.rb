class RenameDateInBookingsToEndDate < ActiveRecord::Migration[5.2]
  def change
    rename_column :bookings, :date, :end_date
  end
end
