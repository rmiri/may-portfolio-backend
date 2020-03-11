class CreatePage < ActiveRecord::Migration[6.0]
  def change
    create_table :pages do |t|
      t.string :website_name
      t.string :logo
      t.string :nav_link_1
      t.string :nav_link_2
      t.string :filter_1
      t.string :filter_2
      t.string :filter_3
      t.string :footer_link_1
      t.string :footer_link_2
      t.string :footer_link_3
      t.references :user, null: false, foreign_key: true
    end
  end
end
