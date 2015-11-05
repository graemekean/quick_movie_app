class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.time :posted_time
      t.string :title
      t.string :content
      t.integer :movie_id
      t.string :venue
      t.integer :up_votes
      t.integer :down_votes

      t.timestamps null: false
    end
  end
end
