class MovimentosController < ApplicationController
  before_action :set_movimento, only: %i[ show edit update destroy ]

  # GET /movimentos or /movimentos.json
  def index
    @movimentos = Movimento.all
  end

  # GET /movimentos/1 or /movimentos/1.json
  def show
  end

  # GET /movimentos/new
  def new
    @movimento = Movimento.new
  end

  # GET /movimentos/1/edit
  def edit
  end

  # POST /movimentos or /movimentos.json
  def create
    @movimento = Movimento.new(movimento_params)

    respond_to do |format|
      if @movimento.save
        format.html { redirect_to @movimento, notice: "Movimento was successfully created." }
        format.json { render :show, status: :created, location: @movimento }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @movimento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /movimentos/1 or /movimentos/1.json
  def update
    respond_to do |format|
      if @movimento.update(movimento_params)
        format.html { redirect_to @movimento, notice: "Movimento was successfully updated." }
        format.json { render :show, status: :ok, location: @movimento }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @movimento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movimentos/1 or /movimentos/1.json
  def destroy
    @movimento.destroy!

    respond_to do |format|
      format.html { redirect_to movimentos_path, status: :see_other, notice: "Movimento was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movimento
      @movimento = Movimento.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def movimento_params
      params.expect(movimento: [ :entrada, :saida, :veiculo_id, :vaga_id ])
    end
end
