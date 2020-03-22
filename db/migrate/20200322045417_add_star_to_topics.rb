class AddStarToTopics < ActiveRecord::Migration[5.2]
  def change
    add_column :topics, :star, :integer
  end
end
