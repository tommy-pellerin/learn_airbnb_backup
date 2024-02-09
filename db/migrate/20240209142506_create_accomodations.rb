class CreateAccomodations < ActiveRecord::Migration[7.1]
  def change
    create_table :accomodations do |t|
      t.integer :available_beds
      t.integer :price
      t.text :description
      t.boolean :has_wifi
      t.text :welcome_message
      t.belongs_to :city, index: true #cette ligne rajoute la référence à la table cities
      t.belongs_to :user, index: true #cette ligne rajoute la référence à la table users

      
    end
  end
end
