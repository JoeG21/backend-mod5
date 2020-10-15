class UsersController < ApplicationController
    def index
        users = User.all
        render json: users, only: [:id, :name, :username, :password, :age]
    end

    def show
        user = find_user
        render json: user, only: [:id, :name, :username, :password, :age]
    end

    def create
        @user = User.create(users_params)
        payload = { user_id: @user.id }
        token = JWT.encode(payload,ENV['SUPER_SECRET_KEY'],'HS256')
        render :json => { :auth_key => token }, :status => :ok

        # @user = User.create(users_params)
        # render :json => @user.as_json(except: [:password_digest]), :status => :ok

        # user = User.find_user(user_params)
        # if user == nil 
        #     user = User.new(user_params)
        #     user.save
        # end
        # render json: user, only: [:id, :name, :username, :password, :age]
    end

    private
    def find_user
        @user = User.find(params[:id])
    end

    def users_params
        params.require(:user).permit(:first_name, :last_name, :email, :username, :password, :age)
    end
end
