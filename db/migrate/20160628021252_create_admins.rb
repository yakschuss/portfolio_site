class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|

      t.string :password_digest
      t.string :username


      t.timestamps null: false
    end
  end
end