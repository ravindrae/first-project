class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         has_many :articles,:dependent =>:destroy
         has_many :comments,:dependent =>:destroy
  validates :first_name,presence:true
  validates :last_name, presence:true
  validates :email ,presence:true
  validates :encrypted_password,presence:true
end
