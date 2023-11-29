# app/models/keyword.rb
class Keyword < ApplicationRecord
  belongs_to :user
  has_one :search_results

  def self.import(file, user_id)
    # Lógica para procesar el archivo CSV y guardar las palabras clave
    CSV.foreach(file.path, headers: true) do |row|
      Keyword.create(user_id: user_id, keyword: row['keyword'])
    end
  end
end
