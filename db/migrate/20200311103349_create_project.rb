class CreateProject < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :index_image
      t.string :index_description
      t.string :description
      t.string :type
      t.boolean :main_page?, default: false
    end
  end
end
