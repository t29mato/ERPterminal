class HomeController < ApplicationController
  def top
    @business_types = BusinessType.all
  end

  def about
  end

end
