class ReceivesController < InheritedResources::Base

  private

    def receive_params
      params.require(:receive).permit(:user_id, :bank_id, :clabe, :name)
    end

     protected
    def collection
      #get_collection_ivar || set_collection_ivar(end_of_association_chain.paginate(:page => params[:page]))
    end
end

