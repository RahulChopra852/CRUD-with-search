class CreateBlogs < ActiveRecord::Migration[6.1]
  def change
    create_table :blogs do |t|
      t.string :image
      t.string :title
      t.timestamp :time
      t.text :comments
      t.text :article
      t.text :randomfield1
      t.text :randomfield2
      t.text :randomfield3

      t.timestamps
    end
  end
end
