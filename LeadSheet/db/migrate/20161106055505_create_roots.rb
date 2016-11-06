class CreateRoots < ActiveRecord::Migration
  def change
    create_table :roots do |t|
    	t.integer :chord_id
      t.timestamps null: false
    end
  end
end
