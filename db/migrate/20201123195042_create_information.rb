class CreateInformation < ActiveRecord::Migration[6.0]
  def change
    create_table :information do |t|
      t.boolean :letter_of_the_year
      t.integer :number_of_letters
      t.string :wanted_letters
      t.string :unwanted_letters
      t.string :start_with

      t.timestamps
    end
  end
end
