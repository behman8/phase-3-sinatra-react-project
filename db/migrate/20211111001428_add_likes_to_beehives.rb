class AddLikesToBeehives < ActiveRecord::Migration[6.1]
  def change
    add_column :beehives, :likes, :integer, :default => 0
  end
end
