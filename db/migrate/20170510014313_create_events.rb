class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
    	t.integer :attendee_id, index: true #indirect relationship with User via Intermediate
    	t.integer :creator_id, index: true #direct relationship with User
    	
    	t.date :date
      t.timestamps
    end
  end
end
