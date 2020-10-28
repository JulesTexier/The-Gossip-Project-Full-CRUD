class GossipsController < ApplicationController
  def show
      @gossip = Gossip.find(params[:id])
  end

  def new
    @gossip = Gossip.new
  end

  def create
    @gossip = Gossip.new(title: params['title'], content: params['content'], user: User.find(35))
  
    if @gossip.save
      redirect_to @gossip
    else
      render ('new')
    end
  end

  def edit
    @gossip = Gossip.find(params[:id])
  end
  
  def update
      @model = Model.find(params[:id])
      if @model.update(tes_params)
        redirect_to @model
      else
        render :edit
      end
  end
end

