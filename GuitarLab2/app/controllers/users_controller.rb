class UsersController < ApplicationController

  before_action :logged_in_user, only: [:edit, :update, :index, :destroy]
  before_action :correct_user, only: [:edit, :update]
  before_action :admin_user, only: :destroy


  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
        @user = User.new(user_params)

            if @user.save
              log_in @user

              redirect_to "http://localhost:3000/masters/userStatus"
            else
              render 'new'
            end
  end

            def edit
              @user = User.find(params[:id])
            end

            def update
                  @user = User.find(params[:id])

                  if @user.update_attributes(user_params)
                    flash[:success] = "Profile Update"
                    redirect_to @user
                  else
                    render 'edit'
                  end
              end

            def correct_user
                    @user = User.find(params[:id])
                    redirect_to(root_url) unless current_user?(@user)
                  end

                          def index
                            @user = User.all
                          end

      def destroy
        User.find(params[:id]).destroy
        flash[:success] = "User successfully deleted"
        redirect_to users_url
      end



        private
                def user_params
                  params.require(:user).permit(:name, :email, :password, :password_confirmation, :profpic, :coverpic, :faveMusic, :bio, :code)
                end

                def logged_in_user
                        if !logged_in?
                         flash[:error] = "Not logged in!"
                         redirect_to signup_path
                        end
                  end


        def admin_user
          redirect_to(root_url) unless current_user.admin?
        end


end
