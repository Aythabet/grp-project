class AddAgeToEscort < ActiveRecord::Migration[5.2]
  def change
    add_column :escorts, :age, :integer
  end
end
