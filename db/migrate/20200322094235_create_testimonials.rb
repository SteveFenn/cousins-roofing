class CreateTestimonials < ActiveRecord::Migration[6.0]
  def change
    create_table :testimonials do |t|
      t.string :author, null: false
      t.timestamps
    end
  end
end
