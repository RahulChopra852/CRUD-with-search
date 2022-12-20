class CreatePosts < ActiveRecord::Migration[6.1]

  def change
    def up
        drop_table :posts
      end

      def down
        raise ActiveRecord::IrreversibleMigration
      end

    end
  end
