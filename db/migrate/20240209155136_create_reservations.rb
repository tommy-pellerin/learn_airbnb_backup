class CreateReservations < ActiveRecord::Migration[7.1]
  def change
    create_table :reservations do |t|
      t.datetime :start_date
      t.datetime :end_date

      t.belongs_to :user, index: true #cette ligne rajoute la référence à la table users
      t.belongs_to :accomodation, index: true #cette ligne rajoute la référence à la table accomodations
    end
  end
end
