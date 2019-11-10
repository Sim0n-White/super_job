class RemoveValutaFromSearchers < ActiveRecord::Migration[6.0]
  def change

    remove_column :searchers, :valuta, :string
  end
end
