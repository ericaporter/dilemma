class AddColorToProblems < ActiveRecord::Migration
  def change
    add_column :problems, :color, :string, default: "#008CBA"
  end
end
