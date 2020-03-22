class CreateFeatureSlides < ActiveRecord::Migration[6.0]
  def change
    create_table :feature_slides do |t|
      t.string :title, null: false
      t.timestamps
    end
  end
end
