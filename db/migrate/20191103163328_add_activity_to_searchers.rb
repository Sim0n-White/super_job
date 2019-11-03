class AddActivityToSearchers < ActiveRecord::Migration[6.0]
  def change
    add_column :searchers, :activ, :integer, :default => 0
  end
end
