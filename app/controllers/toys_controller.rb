class ToysController < ApplicationController
  
  def index
    puts "working"
    @toys = Toy.all 
  end

  def create
    puts params
    Toy.create(name: params[:toy][:name], description: params[:toy][:description], picture: params[:toy][:picture],
                date_posted: params[:toy][:date_posted], user_id: params[:toy][:user_id])
    redirect_to toy_path(Toy.maximum(:id))
  end
  
  def new
  end

  def show
    @toy = Toy.find(params[:id].to_i)
    p params
  end

  def edit
    puts "Is my controller even working"
    @toy = Toy.find(params[:id].to_i)
  end

  def update
    puts params
    @toy = Toy.find(params[:id].to_i)
    @toy.update(name: params[:toy][:name], description: params[:toy][:description], picture: params[:toy][:picture],
      date_posted: params[:toy][:date_posted], user_id: params[:id])
    redirect_to toy_path(params[:id].to_i)
  end

  def destroy
    @toy = Toy.find(params[:id].to_i)
    @toy.destroy
    redirect_to toys_path
  end

end