class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.belongs_to :artwork, foreign_key: true, null: false
      t.string :review

      t.timestamps
    end
  end
end
