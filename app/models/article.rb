class Article < ApplicationRecord
    validates :name, presence: {message: "name must not be empty"}
    validates :body, presence: true,
    length: { minimum: 10 }

    has_many :comments
end
