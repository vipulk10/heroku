class CreateReceps < ActiveRecord::Migration
  def change
    create_table :receps do |t|

      t.timestamps null: false
    end
  end
end
