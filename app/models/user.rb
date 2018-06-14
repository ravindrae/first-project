class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         has_many :articles
         has_many :comments
  validates :first_name,presence:true
  validates :last_name, presence:true
  validates :email ,presence:true
  validates :encrypted_password,presence:true,format: { with: /\A[a-zA-Z0-9]+\z/,message:"only allows alphanumerics....!"}
end
