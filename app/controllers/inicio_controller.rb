class InicioController < ApplicationController
  def index
   	@eventos = Evento.find(:all, :order => 'created_at DESC', :limit => 5);
  end

end
