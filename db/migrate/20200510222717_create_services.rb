class CreateServices < ActiveRecord::Migration[5.2]
  def change
    create_table :services do |t|
      t.date :date
      t.string :observation
      t.references :tecnic, index: true, foreign_key: true
      t.references :area, index: true, foreign_key: true
      t.references :service_area, index: true, foreign_key: true
      t.references :service_mode, index: true, foreign_key: true
      t.references :service_type, index: true, foreign_key: true

      t.timestamps
    end
  end
end
