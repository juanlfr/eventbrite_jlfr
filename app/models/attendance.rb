class Attendance < ApplicationRecord

	after_create :inscription_event_send

	belongs_to :user
	belongs_to :event
	
	def inscription_event_send
		UserMailer.inscription_event(self).deliver_now
  end

end
