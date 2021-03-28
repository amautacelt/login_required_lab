class SessionsController < ApplicationController

    def new
    end

    def create
        return redirect_to(controller: 'sessions', action: 'new') if !params[:name] || params[:name].empty?
        session[:name] = params[:name]
        redirect_to '/'
        # redirect_to controller: 'application', action: 'hello'
    end

    def destroy
        if session[:name] = params[:name]
            session.delete :name
        else
            redirect_to '/'
        # session.delete :name
        # redirect_to controller: 'application', action: 'hello'
        end
    end

end
