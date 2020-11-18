class CreateOrganizations < ActiveRecord::Migration[6.0]
  def change
    create_table :organizations do |t|
      t.string :org_name
      t.string :org_description

      t.timestamps
    end
  end
end
