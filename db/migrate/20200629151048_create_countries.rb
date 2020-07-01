class CreateCountries < ActiveRecord::Migration[6.0]
  def change
    create_table :countries,:id => false do |t|
      t.integer :id
      t.string :iso
      t.string :name
    end
    
  end
end
