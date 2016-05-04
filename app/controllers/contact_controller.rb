class ContactController < ApplicationController

	def new
		@contact = Contact.new
	end

	def create
		@contact = Contact.new(contact_params)

		if @contact.deliver
			flash.now[:notice] = 'Thank you for your message.'
		else
			flash.now[:error] = 'Cannot send'
			render :new
		end
	end

	private
	def contact_params
		params.require(:message).permit(:name, :email, :message)
	end

end
