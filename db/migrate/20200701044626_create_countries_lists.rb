class CreateCountriesLists < ActiveRecord::Migration[6.0]
  def change
    create_table :countries_lists do |t|
      t.references :countries
      t.references :lists
      t.integer :country_id
      t.integer :list_id

      t.timestamps
    end
  end
end
