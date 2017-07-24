class CreateCountries < ActiveRecord::Migration[5.1]
  def change
    create_table :countries do |t|
      t.string :name
      t.text :map
      t.references :region, foreign_key: true

      t.timestamps
    end
  end
end
