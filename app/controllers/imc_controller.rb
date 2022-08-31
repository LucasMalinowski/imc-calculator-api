class ImcController < ApplicationController
  def create
    @imc = Imc.create(imc_params)
    response = ::ClassifyImc.call(@imc.final_imc)

    render json: response
  end

  private

  def imc_params
    params.require(:imc).permit(:height, :weight)
  end
end