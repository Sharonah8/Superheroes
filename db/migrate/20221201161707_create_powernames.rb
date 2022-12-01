class CreatePowernames < ActiveRecord::Migration[7.0]
  def change
    create_table :powernames do |t|
      t.string :description

      t.timestamps
    end
  end
end
