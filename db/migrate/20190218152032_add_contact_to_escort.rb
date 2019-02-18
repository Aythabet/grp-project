class AddContactToEscort < ActiveRecord::Migration[5.2]
  def change
    add_column :escorts, :contact, :string
  end
end
