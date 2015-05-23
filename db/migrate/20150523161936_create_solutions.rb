class CreateSolutions < ActiveRecord::Migration
  def change
    create_table :solutions do |t|
      t.references :problem, index: true, foreign_key: true
      t.string :title

      t.timestamps null: false
    end
  end
end