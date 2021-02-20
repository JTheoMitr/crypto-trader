class SessionsController < ApplicationController

    def omniauth

        user = User.find_or_create_by(uid: auth['uid'], provider: auth['provider']) do |u|

            u.username = auth['info']['name']
            u.email = auth['info']['email']
            u.password = SecureRandom.hex(16)

        end

        if user.valid?
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


