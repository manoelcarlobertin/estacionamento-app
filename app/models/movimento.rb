class Movimento < ApplicationRecord
  belongs_to :veiculo
  belongs_to :vaga

  # Ao criar um movimento, bloqueia a vaga
  after_create :ocupar_vaga
  # Ao atualizar (lançar saída), libera a vaga
  after_update :liberar_vaga, if: :saida_present?

  scope :entre_datas, ->(inicio, fim) {
    where(entrada: inicio.beginning_of_day..fim.end_of_day)
  }

  private

  def ocupar_vaga
    vaga.update!(status: false)
  end

  def liberar_vaga
    vaga.update!(status: true)
  end

  def saida_present?
    saved_change_to_saida? && saida.present?
  end
end
