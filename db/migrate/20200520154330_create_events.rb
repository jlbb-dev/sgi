class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.text :title
      t.date :start
      t.date :end

      t.timestamps
    end
  end
end
