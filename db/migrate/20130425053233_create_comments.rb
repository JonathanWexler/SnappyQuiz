class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :body
      t.string :commenter
      t.string :post

      t.timestamps
    end
  end
end
