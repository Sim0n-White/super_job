class AddUseridToWorks < ActiveRecord::Migration[6.0]
  def change
    add_column :works, :userid, :integer
  end
end
