class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.date :date
      t.time :start_time
      t.time :end_time
      t.string :title
      t.text :description
      t.decimal :cost
      t.integer :capacity
      t.references :city, foreign_key: true
      t.string :event_type
      t.integer :status 
      t.integer :privacy
      t.references :group, foreign_key: true 
      t.timestamps
    end
  end
end
