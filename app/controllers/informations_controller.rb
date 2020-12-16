class InformationsController < ApplicationController
  def new
    @information = Information.new
    @year = Time.current.year
  end

  def create
    @information = Information.new(params_information)
    result(@information.letter_of_the_year, @information.number_of_letters, @information.unwanted_letters)
    if @information.save
      render(:show)
    else
      redirect_to new_path
    end
  end

  private

  def result(letter_of_the_year, number_of_letters, unwanted_letters)
    @year = Time.current.year
    @letters_name = Information::LETTERS.delete(unwanted_letters)
    if letter_of_the_year == false
      @name_lenght = Information::LETTERS.sample(number_of_letters)
      @result = @name_lenght.join
    elsif letter_of_the_year == true
      @first_letter_result = Information::LETTERS_OF_YEARS[@year]
      @name_lenght = Information::LETTERS.sample(number_of_letters - 1)
      @result = @first_letter_result + @name_lenght.join
    end
  end

  def params_information
    params.require(:information).permit(:letter_of_the_year, :number_of_letters, :unwanted_letters)
  end
end
