#logger.info "Inside OAuth::Rack::OAuthFilter"

OAuth::Rack::OAuthFilter.class_eval do

  def oauth1_verify(request, options = {}, &block)
    Rails.logger.info "OAuth::Rack::OAuthFilter override oauth1_verify"
	
		begin
      signature = OAuth::Signature.build(request, options, &block)

      Rails.logger.info "OAuth::Rack::OAuthFilter override oauth1_verify signature : " + signature.inspect

			remember = OauthNonce.remember(signature.request.nonce, signature.request.timestamp)

      Rails.logger.info "OAuth::Rack::OAuthFilter override oauth1_verify remember : " + remember.inspect

			return false unless remember

      value = signature.verify

      Rails.logger.info "OAuth::Rack::OAuthFilter override oauth1_verify value : " + value.inspect

      value
    rescue OAuth::Signature::UnknownSignatureMethod => e
    	Rails.logger.info "OAuth::Rack::OAuthFilter override oauth1_verify UnknownSignatureMethod : " + e.inspect
      false
    end
  end


end