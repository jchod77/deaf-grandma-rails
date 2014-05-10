class PagesController < ApplicationController
  skip_before_filter :verify_authenticity_token
  def index
    @grandma = params[:grandma]
      # look in app/views/index.html.erb
  end

  def grandma
    params[:user_input] =~ /[a-z]/ ? @grandma = "HUH!? SPEAK UP, SONNY?" : @grandma = "NO, NOT SINCE 1983!"
    # render '/'
  end
end