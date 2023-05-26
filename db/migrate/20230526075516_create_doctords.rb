class CreateDoctords < ActiveRecord::Migration[7.0]
  def change
    create_table :doctords do |t|
      t.string :doc_
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
