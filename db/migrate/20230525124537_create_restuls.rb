class CreateRestuls < ActiveRecord::Migration[7.0]
  def change
    create_table :restuls do |t|
     t.integer :marks
     
      t.integer :student_id, foreign_key: true

      t.timestamps
    end
  end
end
