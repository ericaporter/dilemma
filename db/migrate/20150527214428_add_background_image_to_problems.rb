class AddBackgroundImageToProblems < ActiveRecord::Migration
  def change
    add_column :problems, :background_image, :string
  end
end
