class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone1
      t.string :phone1_type
      t.string :phone2
      t.string :phone2_type
      t.string :user_type
      t.string :user_name
      t.string :password_digest
      t.string :status
      t.boolean :admin, default: false

      t.timestamps
    end
  end
end
