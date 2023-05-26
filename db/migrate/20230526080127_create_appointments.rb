class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.belongs_to :patient, index: true
      t.belongs_to :doctord, index: true

      t.timestamps
    end
  end
end
