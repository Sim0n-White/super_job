class CreateSearchers < ActiveRecord::Migration[6.0]
  def change
    create_table :searchers do |t|
      t.string :name
      t.string :surname
      t.text :skills
      t.integer :phone
      t.integer :profession
      t.integer :wtime
      t.integer :country_id
      t.integer :city_id
      t.integer :payment
      t.string :valuta

      t.timestamps
    end
  end
end
