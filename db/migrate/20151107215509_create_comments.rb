class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :author_name
      t.string :body
      t.integer :pin_id, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
