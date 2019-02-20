class ChangeColumnPictureDefault < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :picture, :string, :default => "image/upload/v1550666366/x6evxcsjbufmt1b77q4i.png"
  end
end
