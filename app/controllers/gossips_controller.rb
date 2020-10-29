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
      @gossip = Gossip.find(params[:id])
      gossip_params = params.require(:gossip).permit(:title, :content)
      if @gossip.update(gossip_params)
        redirect_to @gossip
        else 
        render :edit
      end
  end

  def destroy
    @gossip = Gossip.find(params[:id])
    @gossip.destroy
    redirect_to root_path
  end
end

