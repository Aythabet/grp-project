class AddCoordinatesToEscorts < ActiveRecord::Migration[5.2]
  def change
    add_column :escorts, :latitude, :float
    add_column :escorts, :longitude, :float
  end
end
