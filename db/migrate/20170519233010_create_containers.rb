class CreateContainers < ActiveRecord::Migration[5.0]
  def change
    create_table :containers do |t|
      t.string :bic
      t.string :type_container
      t.references :company, foreign_key: true
      t.references :ship, foreign_key: true

      t.timestamps
    end
  end
end
