# frozen_string_literal: true

# home controller
class HomeController < ApplicationController
  def index
    @content = User.all.inspect
  end
end
