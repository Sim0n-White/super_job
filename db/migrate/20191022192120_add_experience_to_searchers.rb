class AddExperienceToSearchers < ActiveRecord::Migration[6.0]
  def change
    add_column :searchers, :experience, :integer
  end
end
