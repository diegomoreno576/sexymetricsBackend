class CreateBlogs < ActiveRecord::Migration[7.0]
  def change
    create_table :blogs do |t|
      t.string :code
      t.string :name
      t.string :avatar
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
