
class CreateWorklists < ActiveRecord::Migration[6.0]
  def change
    create_table :worklists do |t|
      t.string :woname

      t.timestamps
    end
  end
end
