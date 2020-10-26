class GossipsController < ApplicationController
  def gossip
      @gossip = Gossip.find(params[:gossip])
  end
  
end
#   def author
#       @author = User.find(params[:user])
#   end


