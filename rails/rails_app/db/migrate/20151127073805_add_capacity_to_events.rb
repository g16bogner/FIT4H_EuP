class AddCapacityToEvents < ActiveRecord::Migration
  def change
    add_column :events, :image_file, :string
    add_column :events, :capacity, :integer
  end
end
