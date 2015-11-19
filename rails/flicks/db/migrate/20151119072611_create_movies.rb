class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.text :description
      t.string :rating
      t.decimal :total_gross
      t.string :website
      t.datetime :release
      t.datetime :pledging

      t.timestamps null: false
    end
  end
end
