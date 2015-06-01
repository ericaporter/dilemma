class ChangeProfileImageFromStringToText < ActiveRecord::Migration
  def change
    change_column :users, :profile_image, :text
  end
end
