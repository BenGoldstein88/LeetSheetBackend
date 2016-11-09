class CreateMeasures < ActiveRecord::Migration
  def change
    create_table :measures do |t|
    	t.integer :measure_number
    	t.integer :num_beats
    	t.string :chords, array: true
    	t.integer :section_id
      t.timestamps null: false
    end
    # add_index :measures, :chords, using: 'gin'


  end
end
