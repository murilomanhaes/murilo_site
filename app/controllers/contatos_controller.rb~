class ContatosController < ApplicationController
  
  def index
    @contatos = Contato.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @contatos }
    end
  end

  # GET /contatos/1
  # GET /contatos/1.json
  def show
    @contato = Contato.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @contato }
    end
  end

  # GET /contatos/new
  # GET /contatos/new.json
  def new
    @contato = Contato.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @contato }
    end
  end

  # GET /contatos/1/edit
  def edit
    @contato = Contato.find(params[:id])
  end

  # POST /contatos
  # POST /contatos.json
  def create
    @contato = Contato.new(params[:contato])

    respond_to do |format|
      if @contato.save
        format.html { redirect_to @contato, notice: 'Contato enviado com sucesso.' }
        format.json { render json: @contato, status: :created, location: @contato }
      else
        format.html { render action: "new" }
        format.json { render json: @contato.errors, status: :unprocessable_entity }
      end
    end
  end

  def concluidos
    @contatos = Contato.all
  end
  
  def concluir
    @contato = Contato.find(params[:id])
  end

  def salvar_conclusao
    @contato = Contato.find(params[:id])

    respond_to do |format|
      if @contato.update_attributes(params[:contato])
        format.html { redirect_to @contato, notice: 'contato concluido com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render action: "concluir" }
        format.json { render json: @suporte.errors, status: :unprocessable_entity }
      end
    end
  end
  
  
end
