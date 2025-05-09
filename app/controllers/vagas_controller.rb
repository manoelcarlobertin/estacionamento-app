class VagasController < ApplicationController
  before_action :set_vaga, only: %i[ show edit update destroy ]

  # GET /vagas or /vagas.json
  def index
    @vagas = Vaga.all
  end

  # GET /vagas/1 or /vagas/1.json
  def show
  end

  # GET /vagas/new
  def new
    @vaga = Vaga.new
  end

  # GET /vagas/1/edit
  def edit
  end

  # POST /vagas or /vagas.json
  def create
    @vaga = Vaga.new(vaga_params)

    respond_to do |format|
      if @vaga.save
        format.html { redirect_to @vaga, notice: "Vaga was successfully created." }
        format.json { render :show, status: :created, location: @vaga }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @vaga.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vagas/1 or /vagas/1.json
  def update
    respond_to do |format|
      if @vaga.update(vaga_params)
        format.html { redirect_to @vaga, notice: "Vaga was successfully updated." }
        format.json { render :show, status: :ok, location: @vaga }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @vaga.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vagas/1 or /vagas/1.json
  def destroy
    @vaga.destroy!

    respond_to do |format|
      format.html { redirect_to vagas_path, status: :see_other, notice: "Vaga was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

    def total_vagas_livres
      @livres = Vaga.where(status: true).count
    end

    def total_vagas_ocupadas
      @ocupadas = Vaga.where(status: false).count
    end

    def set_vaga
      @vaga = Vaga.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def vaga_params
      params.expect(vaga: [ :numero, :status ])
    end
end
