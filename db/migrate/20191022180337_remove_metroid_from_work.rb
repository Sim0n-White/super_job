class RemoveMetroidFromWork < ActiveRecord::Migration[6.0]
  def change

    remove_column :works, :metroid, :integer
  end
end
