class CreateEpisode < ActiveRecord::Migration[5.1]
  def change
    create_table :episodes do |t|
      t.integer :number
      t.string :link
      t.references :anime, foreign_key: true
      t.references :season, foreign_key: true

      t.timestamps
    end
  end
end
