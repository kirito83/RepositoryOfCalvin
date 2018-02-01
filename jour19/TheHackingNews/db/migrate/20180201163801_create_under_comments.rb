class CreateUnderComments < ActiveRecord::Migration[5.1]
  def change
    create_table :under_comments do |t|
      t.string :commenter
      t.text :body
      t.references :comment, foreign_key: true
      t.timestamps
    end
  end
end
