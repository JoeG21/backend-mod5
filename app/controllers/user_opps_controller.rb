class UserOppsController < ApplicationController
   def create
    UserOpp.create(user_id:params[:user_id], opp_id:params[:opp_id])
    user_opp = User.new(user_params)
    redirect '/opps' 
   end

end
