class CreateUser < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.boolean :adming?, default: false
      t.string :name
    end
  end
end
