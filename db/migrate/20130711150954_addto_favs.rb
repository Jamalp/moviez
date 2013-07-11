class AddtoFavs < ActiveRecord::Migration
  def up
    add_column :movies, :favorite, :boolean
  end

  def down
    remove_column :movies, :favorite
  end
end
