#first it is got called on hitting url
#then it call index.html.haml file in welcome

class WelcomeController < ApplicationController
  
  def index
  	#for searching from welcome page
  	@q =  Article.ransack(params[:q])
  	if params[:q] != nil and params[:q]["title_cont"] != ""
	    @articles = @q.result(distinct: true)
	  end
  end
end
