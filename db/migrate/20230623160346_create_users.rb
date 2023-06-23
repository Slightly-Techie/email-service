class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :github
      t.string :twitter
      t.integer :years_of_experience
      t.string :phone
      t.string :name

      t.timestamps
    end
  end
end
