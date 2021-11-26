class CreateArtworks < ActiveRecord::Migration[5.2]
  def change
    create_table :artworks do |t|
      t.string :name
      t.string :artist
      t.integer :year
      t.string :description

      t.timestamps
    end
  end
end
