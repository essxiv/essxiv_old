class Contact < MailForm::Base

	attribute :name, :validate => false
	attribute :email, :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
	attribute :message

end
