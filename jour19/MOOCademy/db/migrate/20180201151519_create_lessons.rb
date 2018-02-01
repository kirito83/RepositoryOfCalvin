class CreateLessons < ActiveRecord::Migration[5.1]
  def change
    create_table :lessons do |t|
      t.string :title
      t.text :body
      t.references :cour, foreign_hey: true
      t.timestamps
    end
  end
end
