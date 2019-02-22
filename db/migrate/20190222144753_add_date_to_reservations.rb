class AddDateToReservations < ActiveRecord::Migration[5.2]
  def change
    add_column :reservations, :starts_at, :date
    add_column :reservations, :ends_at, :date
  end
end
