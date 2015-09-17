class MakeCommentsPolymorphic < ActiveRecord::Migration
  def change
     add_column :comments, :commentable_id, :integer, index: true
     add_column :comments, :commentable_type, :string
  end
end
