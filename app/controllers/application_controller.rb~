# encoding: utf-8

class ApplicationController < ActionController::Base
  protect_from_forgery
  
  rescue_from CanCan::AccessDenied do
    redirect_to root_path
    
    if usuario_signed_in?
      flash[:notice] = 'Você não tem acesso a esta página'
    else
      flash[:notice] = 'Você precisa está cadastrado ou logado'
    end
    
  end
  
  def current_user
    current_usuario
  end
end
