class ProductsController < ApplicationController

    def index
        # byebug
        @current_cart = session[:cart]
    end

    def add
        item = params[:product]
        cart << item
        redirect_to root_path
    end
end