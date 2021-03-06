class CreateUserBodies < ActiveRecord::Migration[6.0]
  def change
    create_table :user_bodies do |t|
      t.references :user,  null: false, foreign_key: true
      t.integer :weight
      t.integer :height
      t.string :gender
      t.integer :birth_year
      t.string :avatar

      t.timestamps
    end
  end
end