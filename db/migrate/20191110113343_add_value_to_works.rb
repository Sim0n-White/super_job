class AddValueToWorks < ActiveRecord::Migration[6.0]
  def change
    add_column :works, :value, :integer
  end
end
