class SystemsController < ApplicationController
  def index
    @systems = System.all
  end

  def show
    @system = System.find_by(id: params[:id])
  end

end
