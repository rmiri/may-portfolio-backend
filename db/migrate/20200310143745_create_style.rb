class CreateStyle < ActiveRecord::Migration[6.0]
  def change
    create_table :styles do |t|
      t.references :user, null: false, foreign_key: true
      t.string :background_color
      t.string :block_height
      t.string :name_color
      t.string :name_style
      t.string :name_size
      t.string :text_color
      t.string :text_style
      t.string :text_size
    end
  end
end
