class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.string :director
      t.string :writer
      t.string :studio
      t.string :genre
      t.string :year
      t.string :runtime
      t.decimal :rating
      t.string :tagline
      t.string :certificate
      t.string :imdb_link
      t.string :link_to_buy
      t.string :link_to_trailer
      t.string :poster_url
      t.string :fanart1_url
      t.string :fanart2_url
      t.string :background_url
      t.decimal :imdb_rating

      t.timestamps null: false
    end
  end
end
