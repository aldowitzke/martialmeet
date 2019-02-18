class CreateOffers < ActiveRecord::Migration[5.2]
  def change
    create_table :offers do |t|
      t.string :fight_model
      t.text :description
      t.string :address
      t.datetime :datetime
      t.integer :price
      t.references :teacher, foreign_key: { to_table: :users }
      t.references :student, foreign_key: { to_table: :users }
    end
  end
end
