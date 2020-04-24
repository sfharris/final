class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.string :name
      t.text :games
      t.text :championships
      t.timestamps
    end
  end
end
