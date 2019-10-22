class AddExperienceToWorks < ActiveRecord::Migration[6.0]
  def change
    add_column :works, :experience, :integer
  end
end
