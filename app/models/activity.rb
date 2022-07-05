class Activity < ApplicationRecord
    # attr_accessor :name, :body, :number

    # https://guides.rubyonrails.org/active_record_validations.html
    validates :name, presence: {message: "name must not be empty"}
    validates :body, presence: true,
    length: { minimum: 10 }
end
