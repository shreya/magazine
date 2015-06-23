class CreateMagazineBooks < ActiveRecord::Migration
  def change
    create_table :magazine_books do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
