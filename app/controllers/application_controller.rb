class ApplicationController < ActionController::API
  include ActionController::Cookies

  private 

  def authorize 
    return render json: { error: "Not authorized" }, status: :unauthorized unless session.include? :user_id
  end

  def record_not_found
    render json: { error: "Article not found" }, status: :not_found
  end

end
