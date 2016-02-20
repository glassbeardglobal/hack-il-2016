class AddTitleToGroups < ActiveRecord::Migration
  def change
    add_column :groups, :title, :string
    remove_column :groups, :user_id
  end
end
