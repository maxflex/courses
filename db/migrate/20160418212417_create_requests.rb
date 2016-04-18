class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.references :plan, index: true, foreign_key: true
      t.string :name
      t.string :phone

      t.timestamps null: false
    end
  end
end
