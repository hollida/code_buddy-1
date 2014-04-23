class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  acts_as_messageable
  attr_accessible :email, :password, :password_confirmation, :remember_me, :status, :interests, :first_name, :last_name

#  def name
#      email
#  end

end
