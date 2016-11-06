class CreateMeasures < ActiveRecord::Migration
  def change
    create_table :measures do |t|
    	t.integer :num_beats
    	t.integer :section_id
      t.timestamps null: false
    end
  end
end
