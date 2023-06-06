class CreateJointTablePostTag < ActiveRecord::Migration[7.0]
  def change
    create_table :joint_table_post_tags do |t|
      t.string :post
      t.string :tag
      t.index [:post_id, :tag_id   d]

      t.timestamps
    end
  end
end
