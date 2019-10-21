class CreateTimeworks < ActiveRecord::Migration[6.0]
  def change
    create_table :timeworks do |t|
      t.string :wotime

      t.timestamps
    end
  end
end
