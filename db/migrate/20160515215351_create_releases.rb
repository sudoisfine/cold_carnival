class CreateReleases < ActiveRecord::Migration
  def change
    create_table :releases do |t|
      t.string :name
      t.date :date
      t.references :artist, index: true, foreign_key: true
      t.text :tracklist
      t.text :description

      t.timestamps null: false
    end
  end
end
