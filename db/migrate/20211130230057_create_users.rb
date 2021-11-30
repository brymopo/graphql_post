class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :street
      t.string :number
      t.string :city
      t.string :postcode
      t.string :country

      t.timestamps
    end
  end
end
