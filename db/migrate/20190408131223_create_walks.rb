class CreateWalks < ActiveRecord::Migration[5.2]
  def change
    create_table :walks do |t|
    t.string :time
    t.string :length
    t.string :price
  end
  end
end
