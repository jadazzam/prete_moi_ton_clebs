class RemoveDateFromReservations < ActiveRecord::Migration[5.2]
  def change
    remove_column :reservations, :starts_at, :string
    remove_column :reservations, :ends_at, :string
  end
end
