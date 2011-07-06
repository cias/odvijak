class CreateConcepts < ActiveRecord::Migration
  def self.up
    create_table :concepts do |t|
      t.date :date
      t.time :time
      t.text :place
      t.text :pilot

      t.timestamps
    end
  end

  def self.down
    drop_table :concepts
  end
end
