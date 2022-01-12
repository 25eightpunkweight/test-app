class AddIdEmailFirstNameLastNameAvatarToUsers < ActiveRecord::Migration[6.0]
  def change
    change_table :users do |t|
      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :avatar
    end
  end
end
