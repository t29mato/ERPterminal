class ReviewsController < ApplicationController

  before_action :authenticate_user, {only: [:new, :create, :edit, :destroy]}
  before_action :get_tables_name_from_id

  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
    @vendor = Vendor.find_by(id: params[:id])
    @vendor_systems = @vendor.get_vendor_systems
    @systems = @vendor.get_systems(@vendor_systems)
  end

  def create
    @review = Review.new(review_adjust_params)
    @review[:user_id] = @current_user.id
    if @review.save
      flash[:notice] = "口コミ投稿完了しました"
      redirect_to("/top")
    else
      render '/reviews/new'
    end
  end


  private

  def review_adjust_params
    review_params = params.require(:review).permit(:category_id, :user_id, :score, :content, :working_period, :vendor_system_id, :business_type_id)
    review_hash = review_params.to_h
    return review_hash
  end

  def get_tables_name_from_id
    @categories = Category.all
    @industry_types = IndustryType.all
    @business_types = BusinessType.all
    @working_periods = ["利用前（現在構築中）", "現在利用中（２年以内）", "現在利用中（３〜５年）", "現在利用中（５年以上）", "過去に利用していた"]
  end

end
