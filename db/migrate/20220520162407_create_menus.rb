class CreateMenus < ActiveRecord::Migration[6.0]
  def change
    create_table :menus do |t|
      t.references :training_record, null: false, foreign_key: true
      t.integer :weight,             null: false
      t.integer :rep,                null: false

      t.timestamps
    end
  end
end
