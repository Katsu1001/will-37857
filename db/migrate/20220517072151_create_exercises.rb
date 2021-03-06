class CreateExercises < ActiveRecord::Migration[6.0]
  def change
    create_table :exercises do |t|
      t.string :en_name
      t.string :ja_name
      t.timestamps
    end

    add_index :exercises, :en_name,   unique: true
    add_index :exercises, :ja_name,   unique: true
  end
end
