class VeiculosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_veiculo, only: %i[edit update destroy]
  # after_action  :verify_authorized

  def index
    @veiculos = Veiculo.all
    # @veiculos = policy_scope(Veiculo)
    # authorize Veiculo
  end

  def new
    @veiculo = Veiculo.new
    # authorize @veiculo
  end

  # GET /veiculos/1 or /veiculos/1.json
  def show
  end

  # GET /veiculos/1/edit
  def edit
  end

  # POST /veiculos or /veiculos.json
  def create
    @veiculo = Veiculo.new(veiculo_params)

    respond_to do |format|
      if @veiculo.save
        format.html { redirect_to @veiculo, notice: "Veiculo was successfully created." }
        format.json { render :show, status: :created, location: @veiculo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @veiculo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /veiculos/1 or /veiculos/1.json
  def update
    respond_to do |format|
      if @veiculo.update(veiculo_params)
        format.html { redirect_to @veiculo, notice: "Veiculo was successfully updated." }
        format.json { render :show, status: :ok, location: @veiculo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @veiculo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /veiculos/1 or /veiculos/1.json
  def destroy
    @veiculo.destroy!

    respond_to do |format|
      format.html { redirect_to veiculos_path, status: :see_other, notice: "Veiculo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_veiculo
      @veiculo = Veiculo.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def veiculo_params
      params.expect(veiculo: [ :placa, :modelo, :cliente_id ])
    end
end
