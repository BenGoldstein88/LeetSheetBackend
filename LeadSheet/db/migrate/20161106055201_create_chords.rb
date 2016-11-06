class CreateChords < ActiveRecord::Migration
  def change
    create_table :chords do |t|
    	t.integer :alternate_root_id, defeault: nil
    	t.integer :number
    	t.string :quality
 		t.string :modifications
    	t.integer :add
    	t.integer :subtract
    	t.integer :suspend

      t.integer :beat_id
      t.timestamps null: false
    end
  end
end
