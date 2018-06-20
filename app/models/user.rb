class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         has_many :articles,:dependent =>:destroy
         has_many :comments,:dependent =>:destroy
  validates :first_name,presence:true,format: { with: /\A[a-zA-Z ]+\z/,message: "only allows letters.......!" }
  validates :last_name, presence:true,format: { with: /\A[a-zA-Z ]+\z/,message: "only allows letters.......!" }
  validates :email ,presence:true
  mount_uploader :profile_image,ProfileImageUploader
end
