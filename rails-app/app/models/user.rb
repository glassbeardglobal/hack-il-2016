class User < ActiveRecord::Base
  has_many :friendables
  has_many :users, through: :friendables
  has_many :groups

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
