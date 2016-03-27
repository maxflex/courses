class CreatePlanOptions < ActiveRecord::Migration
  def change
    create_table :plan_options do |t|
      t.string :title
      t.timestamps null: false
    end
  end
end
