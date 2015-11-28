class AddCommentToComment < ActiveRecord::Migration
  def change
    add_column :comments, :Comment, :text
  end
end
