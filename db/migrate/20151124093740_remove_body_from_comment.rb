class RemoveBodyFromComment < ActiveRecord::Migration
  def change
    remove_column :comments, :body, :text
  end
end
