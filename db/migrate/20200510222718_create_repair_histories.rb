class CreateRepairHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :repair_histories do |t|
      t.string :date
      t.string :pccode
      t.text :observation
      t.references :tecnic, index: true,foreign_key: true
      t.references :service_area, index: true, foreign_key: true
      t.references :repair_type, index: true, foreign_key: true

      t.timestamps
    end
  end
end
