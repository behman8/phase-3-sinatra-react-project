class CreateBeehives < ActiveRecord::Migration[6.1]
  def change
    create_table :beehives do |t|
      t.string :queen_name
      t.string :type_of_bees
      t.integer :number_of_boxes
      t.integer :owner_id
    end
  end
end
