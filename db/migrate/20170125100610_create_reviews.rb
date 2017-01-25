class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.text :body
      t.references :book, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
    add_index :reviews, [:book_id, :user_id], unique: true
  end
end
