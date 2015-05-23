class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :problem, index: true, foreign_key: true
      t.string :name
      t.text :content

      t.timestamps null: false
    end
  end
end
