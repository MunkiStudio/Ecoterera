class MessagesController < ApplicationController


  def create
  	@message = Message.new(params[:message])
  	if @message.valid?
  		name = params[:message][:name]
  		from = params[:message][:email]
  		content = params[:message][:content]
  		MailWorker.perform_async(from,name,content)
  		redirect_to root_url, notice: "Tu mensaje fue enviado, nos contactaremos contigo!"
  	else
  		render "application#index"
  	end
  end
end
