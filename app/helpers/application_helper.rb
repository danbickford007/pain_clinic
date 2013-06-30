module ApplicationHelper

  def user_link
    if session[:email]
      content_tag :li, (link_to "Welcome: #{session[:email]}", user_path(session[:id]))
    end
  end

end
