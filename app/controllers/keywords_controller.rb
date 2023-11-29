# app/controllers/keywords_controller.rb
class KeywordsController < ApplicationController
  before_action :set_keyword, only: %i[show edit update destroy]
  before_action :authenticate_user!, only: [:import]

  # ... Otras acciones del controlador ...

  # Acción para importar palabras clave desde un archivo CSV

  def index
    @keywords = Keyword.all
  end

  def new
    @keyword = Keyword.new
  end
  

  def import
    uploaded_file = params[:file]

    # Lógica para procesar el archivo CSV y guardar las palabras clave
    Keyword.import(uploaded_file, current_user.id)

    redirect_to keywords_path, notice: 'CSV file imported successfully.'
  rescue StandardError => e
    redirect_to keywords_path, alert: "Error importing CSV file: #{e.message}"
  end

  private

  # ... Métodos privados existentes ...

  # Utilidad para configurar la palabra clave por ID
  def set_keyword
    @keyword = Keyword.find(params[:id])
  end
end
