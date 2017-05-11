class CreateIntermediates < ActiveRecord::Migration[5.0]
  def change
    create_table :intermediates do |t|
    	t.integer :attendee_id, index: true
    	t.integer :attended_event_id, index: true
      t.timestamps
    end
  end
end
