class HomeController < ApplicationController
  def index
    @list_idea = Idea.all
  end
  
  def create
    new_idea = Idea.new(title: params[:title], editor: params[:editor], content: params[:content])
    new_idea.save
    redirect_to '/'
  end
  
  def count_check
    one_idea = Idea.find(params[:value1])
    one_idea.count = one_idea.count + 1
    one_idea.save
    two_idea = Idea.find(params[:value2])
    two_idea.count = two_idea.count + 1
    two_idea.save
    redirect_to'/'
  end
end
