module ApplicationHelper
  def twitter_icon_url
    "http://api.twitter.com/1/users/profile_image/#{current_user.screen_name}.format?size=mini"
  end
end
