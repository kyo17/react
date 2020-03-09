class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.references :user, foreign_key: true, on_delete: :cascade
      t.string :name, default: "", null: false
      t.text :content, null: false

      t.timestamps
    end
  end
end
