class User < ApplicationRecord
  acts_as_voter
  mount_uploader :image, AvatarUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable,
         :omniauth_providers => [:facebook]

  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :friend_requests, dependent: :destroy
  has_many :pending_friends, through: :friend_requests, source: :friend
  has_many :friendships, dependent: :destroy
  has_many :friends, through: :friendships

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0, 20]
      user.name = auth.info.name
      user.remote_image_url = auth.info.image
    end
  end

  def self.search(search)
    where("email LIKE ?", "%#{search}%").or(where("name LIKE ?", "%#{search}%"))
  end

  def remove_friend(user, friend)
    user.friends.destroy(friend)
  end
end
