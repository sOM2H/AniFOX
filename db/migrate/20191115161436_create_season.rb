class CreateSeason < ActiveRecord::Migration[5.1]
  def change
    create_table :seasons do |t|
      t.integer :number
      t.string :name
      t.references :anime, foreign_key: true

      t.timestamps
    end
  end
end
