class AddValueToSearchers < ActiveRecord::Migration[6.0]
  def change
    add_column :searchers, :value, :integer, :default => 1
  end
end
