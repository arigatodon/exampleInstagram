class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
    before_save :default_role
  has_many :comments
  has_many :post
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

           enum role: [:admin, :client, :guest]



  def default_role
    self.role ||= 1
  end


end
