class AddActivtrackToWorks < ActiveRecord::Migration[6.0]
  def change
    add_column :works, :activ, :integer, :default => 0
  end
end
