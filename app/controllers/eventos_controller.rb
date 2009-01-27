class EventosController < ApplicationController

  before_filter :load_js

  def index
  	@eventos = Evento.paginate :page => params[:page], :order => 'created_at DESC', :per_page => 5
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @eventos }
    end
  end
  def show
    @evento = Evento.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @evento }
    end
  end
  def load_js
    @load_prototype = true
  end   
  def teste
  
    @evento = Evento.find(params[:id])
    respond_to do |format|
      format.html { render :layout => false }
    end
  end  
end
