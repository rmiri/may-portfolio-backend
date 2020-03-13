class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :index_description
      t.text :description
      t.string :type
      t.references :user, null: false, foreign_key: true
    end
  end
end
