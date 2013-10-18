# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
# Ecotetera::Application.config.secret_key_base = '8e1b61d9a109e44406451d43cde16d6ce8028382d7d917fc7c8ba4fee6a9188b986333966661c15af8c05c43b9ab54f5561c320dc9c0f8a97b79eaad3652fa8c'

def secure_token
	token_file = Rails.root.join('.secret')
	if File.exists?(token_file)
		File.read(token_file).chomp
	else
		token = SecureRandom.hex(64)
		File.write(token_file,token)
		token
	end
end

Ecotetera::Application.config.secret_key_base = secure_token