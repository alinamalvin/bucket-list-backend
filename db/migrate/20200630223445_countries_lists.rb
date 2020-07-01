class CountriesLists < ActiveRecord::Migration[6.0]
  def change
    create_table :countries_lists, id: false do |t|
      t.belongs_to :list 
      t.belongs_to :country
  end
end
end 
