class CreateEmbassies < ActiveRecord::Migration[6.0]
  def change
    create_table :embassies do |t|
      t.string :emb_name
      t.string :emb_description

      t.timestamps
    end
  end
end
