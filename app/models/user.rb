class User < ApplicationRecord
	has_many :events, foreign_key: :creator_id
	has_many :intermediates, foreign_key: :attendee_id
	has_many :attended_events, through: :intermediates, source: :event

	def upcoming_events
		self.attended_events.where("date >= ?",Time.now.to_date)
	end

	def past_events
		self.attended_events.where("date < ? ", Time.now.to_date)
	end
end
