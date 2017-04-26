class WelcomeController < ApplicationController


  def index
    flash[:notice] = "zao an !!!"
  end


end
