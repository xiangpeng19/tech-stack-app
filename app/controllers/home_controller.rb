# frozen_string_literal: true

# home controller
class HomeController < ApplicationController
  before_action :authenticate_user!
  def index
    @content = User.take.last_sign_in_ip.inspect
  end
end
