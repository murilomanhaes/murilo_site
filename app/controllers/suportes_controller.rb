class SuportesController < ApplicationController
  
  load_and_authorize_resource
  before_filter :authenticate_usuario! 
  
  
  def index
    @suportes = Suporte.all
  end

  def show
    @suporte = Suporte.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @suporte }
    end
  end

  
  def new
    @suporte = Suporte.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @suporte }
    end
  end
  
  def adminsuporte
  
  end
  
  def concluidos
    @suportes = Suporte.all
  end



  def create
    @suporte = Suporte.new(params[:suporte].merge(:usuario_id => current_usuario.id))

    respond_to do |format|
      if @suporte.save
        format.html { redirect_to @suporte, notice: 'Suporte cadastrado com sucesso' }
        format.json { render json: @suporte, status: :created, location: @suporte }
      else
        format.html { render action: "new" }
        format.json { render json: @suporte.errors, status: :unprocessable_entity }
      end
    end
  end
  
  
  def concluir
    @suporte = Suporte.find(params[:id])
  end

  def salvar_conclusao
    @suporte = Suporte.find(params[:id])

    respond_to do |format|
      if @suporte.update_attributes(params[:suporte])
        format.html { redirect_to @suporte, notice: 'Suporte concluido com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render action: "concluir" }
        format.json { render json: @suporte.errors, status: :unprocessable_entity }
      end
    end
  end
  
 
  def consultar_concluidos
    usuario_id = params[:usuario_id]
    @suportes = Suporte.where('UPPER(usuario_id) LIKE ?', "%#{usuario_id.upcase}%")
    render 'concluidos'
  end


end
