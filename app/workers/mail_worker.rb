class MailWorker
	include Sidekiq::Worker
	def perform(from,name,content)
		Pony.mail(:to => 'contacto@ecotetera.cl',
			:from => from,
			:subject => 'Contacto dede www.ecotetera.cl',
			:body => content
		)
	end
end