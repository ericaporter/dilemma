class AddCategoryToProblem < ActiveRecord::Migration
  def change
    add_reference :problems, :category, index: true, foreign_key: true
  end
end
