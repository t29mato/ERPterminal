class HomeController < ApplicationController
  def top
    @business_types = BusinessType.all
    @industry_types = IndustryType.all
  end

  def about
  end

end
