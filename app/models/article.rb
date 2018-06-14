class Article < ApplicationRecord
  belongs_to :user
has_many :comments,:dependent =>:destroy
  validates :title ,presence:true,length:{minimum: 4,message:" with minimum 4 characters....!"},format: { with: /\A[a-zA-Z ]+\z/,
    message: "only allows letters.......!" }
  validates :text ,presence:true
end
