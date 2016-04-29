class BowinsController < InheritedResources::Base

  private

    def bowin_params
      params.require(:bowin).permit(:user_id, :bank_id, :clabe, :name)
    end
end

