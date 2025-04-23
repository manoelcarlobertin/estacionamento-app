class Vaga < ApplicationRecord
  has_one :movimento

  def status_humano
    status ? 'Livre' : 'Ocupada'
  end
end
