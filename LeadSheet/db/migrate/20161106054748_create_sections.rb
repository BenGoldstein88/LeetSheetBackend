class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
    	t.string :name
    	t.integer :num_measures
    	t.integer :song_id

      t.timestamps null: false
    end
  end
end
