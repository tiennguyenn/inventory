class ApplicationController < ActionController::Base
  # before_action :verify

  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

  private
    def record_not_found
      p 'dddddddddd'
      render plain: "404 Not Found", status: 404
    end

  private
  def verify
    p 'verify'
  end
end
