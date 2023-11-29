# app/controllers/home_controller.rb
class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
    @keywords = current_user.keywords
    @search_results = current_user.keywords.includes(:search_results)
    @new_keyword = Keyword.new
  end

  def import
    # Lógica para procesar el archivo CSV y guardar las palabras clave
    Keyword.import(params[:file], current_user.id)
    redirect_to root_path, notice: 'CSV file imported successfully.'
  rescue StandardError => e
    redirect_to root_path, alert: "Error importing CSV file: #{e.message}"
  end
end
