class PersonsController < ApplicationController
  def index
    if !params[:search].nil? #if search is not nil
      result = Person.search(params[:search])
      if result
        @persons = result.page(params[:page])
      else
        nil
      end
    else
      nil
    end
  end

  def show
  end

  private
    def persons_params
      params.require(:person).permit(:search)
    end
end