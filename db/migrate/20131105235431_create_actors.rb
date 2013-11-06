class CreateActors < ActiveRecord::Migration
  def change
    create_table :actors do |t|
      t.string :name
      t.string :image_url
      t.string :dob
      t.text :bio
    end
  end
end
