class CreateCountriesLists < ActiveRecord::Migration[6.0]
  def change
    create_table :countries_lists do |t|
      t.references :country, :list
    

      t.timestamps
    end
  end
end
