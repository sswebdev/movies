class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.integer :actor_id
      t.integer :movie_id
      t.string :name
    end
  end
end
