class CreateBlogposts < ActiveRecord::Migration[6.1]


  def change
    create_table :blogposts do |t|
      t.integer :post_id
      t.string :name
      t.time :time
      t.text :body
      t.string :extra1
      t.text :extra2
      t.text :extra3
      t.string :extra4

      t.timestamps
    end
  end
end

  def up
      drop_table :blogposts
        end

    def down
      raise ActiveRecord::IrreversibleMigration
    end
