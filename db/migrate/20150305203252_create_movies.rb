# DS
class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :gross, default: 0
      t.date :release
      t.string :rating
      t.string :description

      t.timestamps
    end
  end
end
