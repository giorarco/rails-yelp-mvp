class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.text :content
      t.references :restaurant, null: false, foreign_key: true
      #default it protects the data integrity - reference for every review

      t.timestamps
    end
  end
end
