class ChangeColumnStatusType < ActiveRecord::Migration[5.2]
  def change
    change_column :escorts, :status, :string
  end
end
