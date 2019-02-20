class AddColumnStatusToReservations < ActiveRecord::Migration[5.2]
  def change
    add_column :reservations, :confirmed, :boolean
  end
end
