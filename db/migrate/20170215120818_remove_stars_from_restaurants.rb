class RemoveStarsFromRestaurants < ActiveRecord::Migration[5.0]
  def change
    remove_column :restaurants, :stars, :integer
  end
end
