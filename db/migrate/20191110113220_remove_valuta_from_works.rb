class RemoveValutaFromWorks < ActiveRecord::Migration[6.0]
  def change

    remove_column :works, :valuta, :integer
  end
end
