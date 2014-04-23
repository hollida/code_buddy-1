class ContactMailer < ActionMailer::Base
  default from: "johnpc@umich.edu"
  def contact_email(params)
      @name = params[:name]
      @email = params[:email]
      @msg = params[:msg]
      mail(to: "johnpc@umich.edu", subject: "New contact form submitted")
  end
end
