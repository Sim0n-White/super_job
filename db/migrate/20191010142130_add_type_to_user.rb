class AddTypeToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :typeof, :boolean
  end
end