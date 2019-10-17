class AddInfoToWorks < ActiveRecord::Migration[6.0]
  def change
    add_column :works, :needs, :text
    add_column :works, :cominfo, :text
    add_column :works, :countryid, :integer
    add_column :works, :cityid, :integer
    add_column :works, :metroid, :integer
    add_column :works, :street, :string
    add_column :works, :house, :string
    add_column :works, :payment, :integer
    add_column :works, :valuta, :string
  end
end
