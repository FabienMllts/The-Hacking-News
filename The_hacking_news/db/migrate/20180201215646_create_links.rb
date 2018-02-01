class CreateLinks < ActiveRecord::Migration[5.1]
  def change
    create_table :links do |t|
      t.string :url
      t.integer :user_id
      t.references :user, foreign_key: true #colonne du tableau Post qui contient une foreign key qui permet de s'assurer que chaque post est lié à un user

      t.timestamps
    end
  end
end
