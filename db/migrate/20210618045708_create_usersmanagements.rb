class CreateUsersmanagements < ActiveRecord::Migration[6.1]
  def change
    create_table :usersmanagements do |t|
      t.string :name
      t.string :password
      t.string :email
      t.string :phone
      t.string :address

      t.timestamps
    end
  end
end
