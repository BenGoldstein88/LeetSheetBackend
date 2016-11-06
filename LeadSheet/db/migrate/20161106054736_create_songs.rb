class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
    	t.string :name
    	t.string :composer
    	t.string :transcriber

      t.timestamps null: false
    end
  end
end
