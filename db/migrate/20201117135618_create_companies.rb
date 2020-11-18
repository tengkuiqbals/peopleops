class CreateCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :companies do |t|
      t.string :comp_name
      t.string :comp_description

      t.timestamps
    end
  end
end
