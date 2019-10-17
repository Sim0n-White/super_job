class CreateWorks < ActiveRecord::Migration[6.0]
  def change
    create_table :works do |t|
      t.string :strukt
      t.string :company
      t.string :name
      t.string :surname
      t.string :email
      t.integer :phone

      t.timestamps
    end
  end
end
