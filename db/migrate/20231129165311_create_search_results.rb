class CreateSearchResults < ActiveRecord::Migration[7.0]
  def change
    create_table :search_results do |t|
      t.references :keyword, null: false, foreign_key: true
      t.integer :adwords_advertisers
      t.integer :total_links
      t.string :total_results
      t.text :html_code

      t.timestamps
    end
  end
end
