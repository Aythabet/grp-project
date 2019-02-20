class ChangeColumnPictureDefaultValue < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :picture, :string, :default => "image/upload/v1550666366/ccjwozp65x65aflvdmuu.gif"
  end
end
