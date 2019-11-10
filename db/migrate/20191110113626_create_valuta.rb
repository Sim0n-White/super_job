class CreateValuta < ActiveRecord::Migration[6.0]
  def change
    create_table :valuta do |t|
      t.string :valuena

      t.timestamps
    end
  end
end
