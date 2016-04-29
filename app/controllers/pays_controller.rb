class PaysController < InheritedResources::Base

  private

    def pay_params
      params.require(:pay).permit(:user_id, :bank_id, :name)
    end
end

