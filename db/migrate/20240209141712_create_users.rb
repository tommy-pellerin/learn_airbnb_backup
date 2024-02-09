class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :email 
      t.string :phone
      t.text :description

    
    end
  end
end
