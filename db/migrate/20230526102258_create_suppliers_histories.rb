class CreateSuppliersHistories < ActiveRecord::Migration[7.0]
  def change
    create_table :suppliers_histories do |t|
      t.belongs_to :account

      t.string :credit_rating

      t.timestamps
    end
  end
end
