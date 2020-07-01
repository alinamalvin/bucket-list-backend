class CreateCountries < ActiveRecord::Migration[6.0]
  def change
    create_table :countries,:id => false do |t|
      t.integer :id, null: false
      t.string :iso
      t.string :name
    end
    add_index :countries, :id, unique: true
  end
end
