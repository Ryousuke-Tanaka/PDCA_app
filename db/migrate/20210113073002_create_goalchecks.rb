class CreateGoalchecks < ActiveRecord::Migration[6.0]
  def change
    create_table :goalchecks do |t|
      t.text :check
      t.text :adjust
      t.datetime :estimate_check_at
      t.datetime :check_at
      t.date :span
      t.integer :achivement
      t.string :note
      t.references :goal, null: false, foreign_key: true

      t.timestamps
    end
  end
end
