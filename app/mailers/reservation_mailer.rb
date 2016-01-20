class ReservationMailer < ApplicationMailer
	def booking_email(customer, host, reservation_id)
	@url = "http://localhost:3000/users/#{customer.id}/listings"
	@host = "anyameows89@gmail.com"
	@customer = customer
	mail(to: @host, subject: "You have received a booking from #{@customer.email}")
	end

	def customer_email(customer, host)
	@customer = customer
	@host = "anyameows89@gmail.com"
	mail(to: @customer.email, subject: "You have booked from #{@host}")
	end
end
