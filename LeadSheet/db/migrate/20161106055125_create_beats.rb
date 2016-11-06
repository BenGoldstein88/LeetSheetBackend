class CreateBeats < ActiveRecord::Migration
  def change
    create_table :beats do |t|

      t.timestamps null: false
    end
  end
end
