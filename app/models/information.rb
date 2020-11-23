class Information < ApplicationRecord
    REPONSE = ["Oui", "Non"]
    validates: :number_of_letters, numericality: { less_than_or_equal_to: 15,  only_integer: true }


end
