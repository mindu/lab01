class FaleConoscoController < ApplicationController

  before_filter :load_js
  def index
  end
  
	def send_email
		if request.post?
		
			from = params[:from]
			subject = params[:subject]
			message = params[:message]
			name = params[:name]
	
			if !from.blank? and !subject.blank? and !message.blank? and !name.blank?
				Emailer.deliver_contact(from, subject, message, name)
				return if request.xhr?
				flash[:notice] = 'Email enviado com sucesso'
			else
				flash[:notice] = 'Preencha todos os campos !'
			end
			
			respond_to do |format|
				format.html { redirect_to :action => 'index' }
			end
		end
	end
  def load_js
    @load_jquery = true
  end   	
end
