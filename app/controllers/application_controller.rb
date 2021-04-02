class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_q

  def after_sign_in_path_for(resource)
    posts_path
  end

  def search
    @results = @q.result
  end

  private

  def set_q
    @q = Post.ransack(params[:q])
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :nickname, :sex])
  end
end
