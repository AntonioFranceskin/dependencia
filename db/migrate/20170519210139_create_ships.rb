class CreateShips < ActiveRecord::Migration[5.0]
  def change
    create_table :ships do |t|
      t.integer :imo
      t.string :name
      t.string :status
      t.string :type_ship
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
