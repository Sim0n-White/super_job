class CreateCities < ActiveRecord::Migration[6.0]
  def change
    create_table :cities do |t|
      t.integer :countryid
      t.string :ciname

      t.timestamps
    end
  end
end
