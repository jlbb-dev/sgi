class CreateServiceModes < ActiveRecord::Migration[5.2]
  def change
    create_table :service_modes do |t|
      t.string :name

      t.timestamps
    end
  end
end
