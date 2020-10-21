class UserOppsController < ApplicationController

   # def index
   #    all = UserOpp.all
   #    render 
   # end

   def create
      user_opp = UserOpp.create(user_id:params[:user_id], opp_id:params[:opp_id])
      render json: user_opp
   #  redirect '/opps' 
   end

end
