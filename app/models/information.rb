class Information < ApplicationRecord
    REPONSE = ["Oui", "Non"]
    LETTERS = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z']

    validates :number_of_letters, numericality: { less_than_or_equal_to: 15,  only_integer: true }
end
