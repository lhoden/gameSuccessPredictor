class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :gamefactors do |t|
      t.string :genre
      t.string :platform
      t.string :developer
    end
  end
end
