class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :fname
      t.string :lname
      t.string :phonenumber
      t.string :username
      t.string :password_digest

      t.timestamps
    end
  end
end
