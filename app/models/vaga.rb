class Vaga < ApplicationRecord
  has_many :movimentos

  # Conveniência para saber se está livre
  def livre?
    status
  end
end
