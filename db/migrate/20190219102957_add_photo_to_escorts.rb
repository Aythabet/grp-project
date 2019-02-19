class AddPhotoToEscorts < ActiveRecord::Migration[5.2]
  def change
    add_column :escorts, :photo, :string
  end
end
