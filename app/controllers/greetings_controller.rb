class GreetingsController < ApplicationController
  before_action :authenticate_user!

  def hello
    render plain: "Hello, World!"
  end
end
