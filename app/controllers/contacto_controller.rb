class ContactoController < ApplicationController
	before_filter :setup_negative_captcha, :only => [:new, :create]

	def create
		# Decrypted params are stored in @captcha.values
		if @captcha.valid?
			redirect_to @comment
		else
			flash[:notice] = @captcha.error if @captcha.error
			render :action => 'new'
		end
	end

	private
	  def setup_negative_captcha
		@captcha = NegativeCaptcha.new(
			# A secret key entered in environment.rb. 'rake secret' will give you a good one.
			secret: NEGATIVE_CAPTCHA_SECRET,
			spinner: request.remote_ip,
			# Whatever fields are in your form
			fields: [:name, :email, :body],
			params: params
		)
	  end
end
