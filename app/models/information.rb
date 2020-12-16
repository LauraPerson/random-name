class Information < ApplicationRecord
  validates :number_of_letters, numericality: { less_than_or_equal_to: 15, only_integer: true }

  REPONSE = ["Oui", "Non"]
  LETTERS = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z']
  LETTERS_OF_YEARS = {
    2020=> "R",
    2021=> "S",
    2022=> "T",
    2023=> "U",
    2024=> "V",
    2025=> "A",
    2026=> "B",
    2027=> "C",
    2028=> "D"
  }

end
