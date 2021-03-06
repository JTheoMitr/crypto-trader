class SessionsController < ApplicationController


    def new
    end

    def create
        u = User.find_by_email(params[:email])
        if u && u.authenticate(params[:password])
            session[:user_id] = u.id
            redirect_to cryptocoins_path
        else
            redirect_to '/login', alert: "Invalid Credentials.  Please Try Again."
        end
    end

    def destroy
        session.delete(:user_id)
        redirect_to '/login'
    end

    def omniauth

        user = User.create_from_omniauth(auth)

        if user.valid?
            session[:user_id] = user.id
            redirect_to cryptocoins_path
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


