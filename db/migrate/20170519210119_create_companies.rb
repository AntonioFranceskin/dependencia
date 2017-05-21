class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string :company_name
      t.string :rif
      t.string :status
      t.string :type_company

      t.timestamps
    end
  end
end
