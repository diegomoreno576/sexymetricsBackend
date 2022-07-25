class Api::V1::SessionsController < ApplicationController
    include CurrentUserConcern

    def create
        user = User
        .find_by(email: params["user"]["email"])
        .try(:authenticate, params["user"]["password"])

        blog = Blog
        .find_by(code: params["user"]["code"])
    
        if user
            session[:user_id] = user.id
            render json:{
                status: :created, 
                logged_in: true,
                user: user,
                role: user.roles,
                blog: 
                if user.has_role?(:admin)
                    Blog.all

                else
                    User.blogs
                end
                

            }
        else
            render json: { status: 401 }
        
        end
    end

   def logged_in
    if @current_user
        render json:    {
            logged_in: true,
            user: @current_user,
            role: @current_user.roles, 
            blog: 
                if @current_user.has_role?(:admin)
                    Blog.all
                else
                    @current_user.blogs
                end
               
        }
    else
        render json: {
            logged_in: false
        }
    end
    end
    
    def logout  
        reset_session
        render json: {status: 200, logged_out: true}
    end
end
