class HomeController < ApplicationController
  def index
    @active_shop_list = ShopList.active.first
    @inactive_shop_lists = ShopList.inactive.all
    @products = if !search_params[:search] or search_params[:search].blank?
        Product.all.order(:name)
      else
        Product.where("lower(name) = ?", search_params[:search].downcase).order(:name)
      end
  end

  private

  def search_params
    params.permit(:search, :product_ids)
  end
end
