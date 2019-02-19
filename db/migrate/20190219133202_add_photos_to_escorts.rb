class AddPhotosToEscorts < ActiveRecord::Migration[5.2]
  def change
    add_column :escorts, :photos, :string
  end
end
