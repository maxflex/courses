class CreatePlanAndOptions < ActiveRecord::Migration
  def change
    create_table :plan_options do |t|
      t.belongs_to :plan, index: true
      t.belongs_to :option, index: true
      t.timestamps null: false
    end
  end
end
