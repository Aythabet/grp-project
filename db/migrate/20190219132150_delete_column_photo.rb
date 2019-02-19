class DeleteColumnPhoto < ActiveRecord::Migration[5.2]
  def change
    remove_column :escorts, :photo
  end
end
