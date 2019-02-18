class CreateEscorts < ActiveRecord::Migration[5.2]
  def change
    create_table :escorts do |t|
      t.string :pseudo
      t.string :city
      t.integer :price
      t.text :service
      t.boolean :status
      t.string :gender

      t.timestamps
    end
  end
end
