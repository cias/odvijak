class CreateDrags < ActiveRecord::Migration
  def self.up
    create_table :drags do |t|
      t.date :date
      t.time :time
      t.text :place
      t.text :drager

      t.timestamps
    end
  end

  def self.down
    drop_table :drags
  end
end
