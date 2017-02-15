class ProfilesController < ApplicationController
    
    
    def new
        @user = User.find( params[:user_id])
        @profile = Profile.new
    end
    
    def create
        @user = User.find(params[:user_id])
        @profile = @user.build_profile(profile_params)
        if @profile.save
            redirect_to user_path( params[:user_id])
        else
            render action: :new
            
        end
    end
    
    def edit
        @user = User.find(params[:user_id])
        @profile = @user.profile
    end
    
    def update
        @user = User.find(params[:user_id])
        @profile = @user.profile
        if @profile.update_attributes(profile_params)
            flash[:success] = "Profile Updated"
            redirect_to user_path(params[:user_id])
        else
           render action: :edit 
        end
    end
    
    
    private
    
    def profile_params
        params.require(:profile).permit(:user_name, :contact_email, :description)
    end
    
    
end