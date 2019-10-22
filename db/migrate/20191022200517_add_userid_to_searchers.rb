class AddUseridToSearchers < ActiveRecord::Migration[6.0]
  def change
    add_column :searchers, :user_id, :integer
  end
end
