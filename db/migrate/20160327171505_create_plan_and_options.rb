class CreatePlanAndOptions < ActiveRecord::Migration
  def change
    create_table :plan_and_options do |t|
      t.belongs_to :plan, index: true
      t.belongs_to :plan_option, index: true
      t.timestamps null: false
    end
  end
end
