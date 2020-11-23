class InformationsController < ApplicationController
def new
    @information = Information.new
  end

  def create
    @information = Information.new(params_information)
    if @information.save
      else
        redirect_to error_path
      end
    else
      render(:new)
    end
  end

  def error
  end

  private

  def params_info
    params.require(:information).permit(:letter_of_the_year, :number_of_letters, :unwanted_letters, :wanted_letters, :start_with)
  end
end

