class RemoveActivFromSearchers < ActiveRecord::Migration[6.0]
  def change

    remove_column :searchers, :activ, :integer
  end
end
