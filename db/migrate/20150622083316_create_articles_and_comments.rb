class CreateArticlesAndComments < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :body

      t.timestamps null: false
    end
    create_table :comments do |t|
      t.text :body
      t.timestamps null: false
    end
  end
end
