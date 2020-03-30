class RenameStarColumnToTopics < ActiveRecord::Migration[5.2]
  def change
    rename_column :topics, :star, :rate
  end
end
