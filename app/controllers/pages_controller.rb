class PagesController < ApplicationController
  def home
  end

  def about
  end

  def contact
      if params[:email] != nil
          flash[:notice] = "Your message has been sent"
          ContactMailer.contact_email(params).deliver
      end
  end
end
