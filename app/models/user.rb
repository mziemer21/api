class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :trackable, :validatable
  devise :omniauthable, omniauth_providers: [:facebook]

  #->Prelang (user_login/devise)
  has_many :establishments
  has_many :rewiews
  has_many :images
  belongs_to :location
  has_and_belongs_to_many :followings
  has_and_belongs_to_many :checkins
  has_and_belongs_to_many :favorites
  has_many :deals
  has_and_belongs_to_many :users
  def self.find_for_facebook_oauth(auth, signed_in_resource=nil)
    user = User.where(provider: auth.provider, uid: auth.uid).first

    # The User was found in our database
    return user if user

    # The User was not found and we need to create them
    User.create(name:     auth.extra.raw_info.name,
                provider: auth.provider,
                uid:      auth.uid,
                email:    auth.info.email,
                password: Devise.friendly_token[0,20])
  end


end
