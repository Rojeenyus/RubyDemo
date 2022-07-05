class AddNameAndBodyToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :name, :string
    add_column :articles, :body, :text
  end
end
