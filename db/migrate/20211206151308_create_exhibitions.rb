class CreateExhibitions < ActiveRecord::Migration[5.2]
  def change
    create_table :exhibitions do |t|
      t.belongs_to :artwork, foreign_key: true, null: false
      t.string :venue

      t.timestamps
    end
  end
end
