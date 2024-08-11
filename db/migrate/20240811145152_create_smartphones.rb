class CreateSmartphones < ActiveRecord::Migration[7.1]
  def change
    create_table :smartphones do |t|
      t.references :manufacturer, null: false, foreign_key: true
      t.references :model, null: false, foreign_key: true
      t.string :data_memory
      t.integer :year_of_manufacture
      t.string :os_version
      t.string :body_color
      t.decimal :price

      t.timestamps
    end
  end
end
