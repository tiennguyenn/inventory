class TestsController < ApplicationController
  # skip_before_action :verify_authenticity_token

  # layout 'main', except: [:show]

  # skip_before_action :verify

  # http_basic_authenticate_with name: 'hoang', password: '123'

  before_action do
    test
  end
  # around_action :test
  # after_action :test

  USERS = {'lifo' => 'world'}
  TOKEN = 'token'

  def index
    @tests = Test.all

    flash[:notice] = 'this is a new notice'

    @current_model ||= session[:user_id] && Model.find(100)

    p request.remote_ip

    render action: :abc

    
  end

  def show
    @tests = Test.all
    render action: :index
  end

  def abc
    render 'index'
  end

  private
  def get_layout
    true ? 'application' : 'main'
  end

  def test
    # p 'tessssssssssssssssssst'
    # yield
    # authenticate_or_request_with_http_digest do |user|
    #   USERS[user]
    # end

    # authenticate_or_request_with_http_token do |token|
    #   ActiveSupport::SecuretyUtils.secure_compare(token, TOKEN)
    # end
  end
end
