class CreateMovieGroups < ActiveRecord::Migration
  def change
    create_table :movie_groups do |t|
      t.integer :group_id
      t.integer :movie_id
      t.integer :user_id
      t.float :rating
      t.integer :votes

      t.timestamps null: false
    end
  end
end
