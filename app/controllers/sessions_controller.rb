class SessionsController < ApplicationController

    def omniauth

        user = User.create_from_omniauth(auth)

        if user.valid?
            session[:user_id] = user.id
            redirect_to new_investment_path
        else
            flash[:message] = user.errors.full_messages.join("")
            redirect_to investments_path
        end
        #provider = auth['provider']
        #name = auth['info']['name']
    end

    private
    
    def auth
        request.env['omniauth.auth']
    end

end


