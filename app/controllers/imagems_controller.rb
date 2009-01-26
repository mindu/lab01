class ImagemsController < ApplicationController

  before_filter :load_evento, :load_js
 
  def show
    @imagem = @evento.imagems.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @imagem }
    end
  end
  def load_evento
  	@evento = Evento.find(params[:evento_id])
  end  
  def load_js
    @load_prototype = true
  end     
end
