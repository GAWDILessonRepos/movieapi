# DS
class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :comment
      t.integer :stars
      t.string :reviewer
      t.belongs_to :movie, index: true

      t.timestamps
    end
    add_foreign_key :reviews, :movies
  end
end
