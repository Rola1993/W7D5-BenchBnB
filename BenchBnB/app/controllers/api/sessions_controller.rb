class Api::SessionsController < ApplicationController

  def create
  end

  def destroy
    logout!
    render {}
  end
end
