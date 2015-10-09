class HomeController < ApplicationController
  def index
    @project = 'Taxi-Express'
    if passenger_signed_in?
      redirect_to "/passengers/dashboard"
    end
  end
  
  def login
    @dashboard = params[:type]
    @link_to_dashboard = "/#{@dashboard}/dashboard"
    @link_to_register = "/home/register?type=#{@dashboard}"
    @dashboard.upcase!
    puts ""
  end
  
  def register
    @dashboard = params[:type]
    @link_to_dashboard = "/#{@dashboard}/dashboard"
    @link_to_login = "/home/login?type=#{@dashboard}"
    @dashboard.upcase!
    puts ""
  end
end
