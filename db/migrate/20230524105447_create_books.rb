class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :book_name
      t.integer :book_number
      t.string :publish_at
      t.integer :user_id, foreign_key: true
      t.timestamps
    end
  end
end
