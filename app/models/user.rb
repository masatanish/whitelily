class User < ActiveRecord::Base
  attr_accessible :name, :provider, :screen_name, :uid

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth['provider']
      user.uid = auth['uid']
      user.screen_name = auth['info']['nickname']
      user.name = auth['info']['name']
    end
  end
end
