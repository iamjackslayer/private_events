class Event < ApplicationRecord
	belongs_to :creator, class_name: "User", dependent: :destroy
	has_many :intermediates, foreign_key: :attended_event_id
	has_many :attendees, through: :intermediates, source: :user
end
