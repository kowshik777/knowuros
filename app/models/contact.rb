class Contact < MailForm::Base
	attribute :name, presence: true,	:validate => true
	attribute :email, presence: true,   :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
	attribute :message, presence: true,	:validate => true
	attribute :nickname,:captcha  => true
	def headers
    {
      :subject => "My Contact Form",
      :to => "knowuros@gmx.com",
      :from => %("#{name}" <#{email}>)
    }
  end
end