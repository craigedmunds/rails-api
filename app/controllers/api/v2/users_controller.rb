module Api
  module V2

    class UsersController < UsersController
      before_filter :oauth_required

      logger.info "Inside Api v2 UsersController"
      logger.info "Current time : " + Time.new.inspect

      #before_filter :auth_required
      #before_filter <img src="http://s1.wp.com/wp-includes/images/smilies/icon_surprised.gif?m=1129645325g" alt=":o" class="wp-smiley"> auth_required
 
    end
  end
end
