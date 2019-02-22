class AddDatesToReservations < ActiveRecord::Migration[5.2]
  def change
    add_column :reservations, :starts_at, :string
    add_column :reservations, :ends_at, :string
  end
end
