class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.string :title
      t.integer :price
      t.string :img

      t.timestamps null: false
    end
  end
end
