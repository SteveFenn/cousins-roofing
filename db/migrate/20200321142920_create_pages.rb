class CreatePages < ActiveRecord::Migration[6.0]
  def change
    create_table :pages do |t|
      t.string :title, null: false
      t.string :slug, null: false, unique: true
      t.string :meta_title
      t.text   :meta_description
      t.timestamps
    end
  end
end
