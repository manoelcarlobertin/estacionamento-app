class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
    # Contagem de vagas livres e ocupadas
    @livres    = Vaga.where(status: true).count
    @ocupadas  = Vaga.where(status: false).count
    @veiculos  = Veiculo.count
  end
end
