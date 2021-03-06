class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :first_name, null: false
      t.string :last_name, null:false
      t.string :email, null: false
      t.boolean :is_admin, default: false
      t.string :password_digest
      t.integer :team_id, default: 0

      t.timestamps null: false
    end
  end
end
