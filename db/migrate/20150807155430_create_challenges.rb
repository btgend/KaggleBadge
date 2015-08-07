class CreateChallenges < ActiveRecord::Migration
  def change
    create_table :challenges do |t|
      t.integer :team_id
      t.string :name
      t.string :image

      t.timestamps null: false
    end
  end
end
