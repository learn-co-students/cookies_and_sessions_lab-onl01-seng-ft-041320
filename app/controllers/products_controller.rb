class ProductsController < ApplicationController
    def index
    end

    def add
        @cart = cart
    end

    def create
        @cart = cart
        @cart << params[:product]
        session[:cart] = @cart
        redirect_to root_path
    end
end
