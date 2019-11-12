class CreatePeople < ActiveRecord::Migration[6.0]
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :email
      t.integer :age
      t.string :parent_name

      t.timestamps
    end
  end
end
