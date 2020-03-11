class CreateAboutMe < ActiveRecord::Migration[6.0]
  def change
    create_table :about_mes do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.string :profile_photo
      t.text :about_me
      t.string :phone
      t.string :email
    end
  end
end
