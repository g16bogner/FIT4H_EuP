class AddLinkToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :video_link, :string
  end
end
