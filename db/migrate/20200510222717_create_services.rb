class CreateServices < ActiveRecord::Migration[5.2]
  def change
    create_table :services do |t|
      t.string :date
      t.references :tecnic, foreign_key: true
      t.references :area, foreign_key: true
      t.references :service_area, foreign_key: true
      t.references :service_mode, foreign_key: true
      t.references :service_type, foreign_key: true

      t.timestamps
    end
  end
end
