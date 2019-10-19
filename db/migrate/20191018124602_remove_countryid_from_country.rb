class RemoveCountryidFromCountry < ActiveRecord::Migration[6.0]
  def change

    remove_column :countries, :countryid, :integer
  end
end
