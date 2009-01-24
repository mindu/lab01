class Emailer < ActionMailer::Base
  
  def contact(from, subject, message, name, sent_at = Time.now)
	@subject = "[FALE-CONOSCO]" + subject
	@recipients = "webmaster@dominio.com.br"
	@from = from
	@reply_to = from
	@sent_on = sent_at

	@body["name"] = name
	@body["title"] = subject
	@body["email"] = from
	@body["message"] = message
	@headers = {}
	end

end
