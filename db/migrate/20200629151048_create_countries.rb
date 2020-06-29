class CreateCountries < ActiveRecord::Migration[6.0]
  def change
    create_table :countries do |t|
      t.string :id_integer
      t.string :iso
      t.string :name
    end
  end
end
