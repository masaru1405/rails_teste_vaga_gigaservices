class PersonsController < ApplicationController
  def index
    # if !params[:search].nil? #if search is not nil
    #   result = Person.search(params[:search])
    #   if result
    #     @persons = result.page(params[:page])
    #   else
    #     nil
    #   end
    # else
    #   nil
    # end
    if params[:search]
      result = Person.search(params[:search]) #pesquiso no model
      if result
        cookies[:search] = params[:search]
        @persons = result.page(params[:page]) #faz a paginação dos resultados (default 10)
      else
        nil
      end
    else
      nil
    end
  end

  def show
    @person = Person.find(params[:id])
  end

  private
    def persons_params
      params.require(:person).permit(:search)
    end
end
