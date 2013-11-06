class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :year
      t.integer :duration, default: 0
      t.text :description
      t.string :image_url
      t.integer :director_id
    end
  end
end
