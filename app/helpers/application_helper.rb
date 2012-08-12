module ApplicationHelper
  def twitter_icon_url(user=current_user)

    if user.nil? or user.screen_name.blank?
      nil
    else
      "http://api.twitter.com/1/users/profile_image/#{user.screen_name}.format?size=mini"
    end
  end

  def d(d)
    d.strftime("%Y-%m-%d %H:%M:%S")
  end
end
