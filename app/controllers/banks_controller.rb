class BanksController < InheritedResources::Base

  private

    def bank_params
      params.require(:bank).permit(:name)
    end
end

