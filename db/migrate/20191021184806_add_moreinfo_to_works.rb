class AddMoreinfoToWorks < ActiveRecord::Migration[6.0]
  def change
    add_column :works, :profession, :integer
    add_column :works, :wtime, :integer
  end
end
