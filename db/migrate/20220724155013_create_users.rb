class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.string :name
      t.string :lastname
      t.string :telefono
      t.string :avatar
      t.string :web

      t.timestamps
    end
  end
end
