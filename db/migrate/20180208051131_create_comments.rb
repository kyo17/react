class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.references :user, foreign_key: true, on_delete: :cascade
      t.references :post, foreign_key: true, on_delete: :cascade
      t.text :content

      t.timestamps
    end
  end
end
