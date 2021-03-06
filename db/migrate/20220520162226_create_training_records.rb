class CreateTrainingRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :training_records do |t|
      t.integer :menu_id,     null: false, foreign_key: true
      t.integer :exercise_id, null: false, foreign_key: true
      t.string :part,         null: false
      t.integer :date,        null: false
      t.string :user_id

      t.timestamps
    end
  end
end
