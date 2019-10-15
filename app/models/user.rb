class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # validates :is_online?, inclusion: [true, false] # add this line
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable



  def username
      #@users = User.is_online?
      #@users = onlinename
      #return email.split('@')[0].capitalize
      return onlinename
  end

end
