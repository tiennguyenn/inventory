class StoreController < ApplicationController
  def index
    # raise Rails.application.config.autoload_paths.inspect
    # raise params.inspect
    # id = params.extract_value(:id)
    
    # raise store_params[:friends].inspect
    # flash[:abc] = "this is abc"

    # flash.keep

    # session[:user_id] = 2

    
    # cookies.encrypted[:name] = 'John'
    # cookies[:age] = 20
    # cookies[:Authentication] = 'Bearer token'
    
    # redirect_to tests_url, flash: {messages: 'this is a notice'}
    # raise params.inspect

    # cookies[:abc] = "this is cookie abc"
    # session[:bcd] = "this is session bcd"

    # redirect_to tests_url, notice: "this is abc"

    # render action: 'testx'

    # if 1
    #   render 'test'
    # end

    # render 'index'

    # p 'sdfsdf'

    # render action: :testx

    redirect_to 'testx'
  end

  def testx
    render 'test'
  end

  private
  def store_params
    # params.permit(:name, {emails: []}, friends: [:name, {family: [:name], hobbies: []}])
    params.permit(:name, {emails: []}, friends: [:name, {family: [:name], hobbies: []}])
  end
end
