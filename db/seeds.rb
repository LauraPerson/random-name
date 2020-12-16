# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


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


LETTERS_OF_YEARS.each do |x|
    puts "created year of #{x[0]}"
end
