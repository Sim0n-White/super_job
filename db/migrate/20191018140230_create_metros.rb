class CreateMetros < ActiveRecord::Migration[6.0]
  def change
    create_table :metros do |t|
      t.integer :cityid
      t.string :mename

      t.timestamps
    end
  end
end
