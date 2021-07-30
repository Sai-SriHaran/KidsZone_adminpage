class ShowuserController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
    @showusers=Showuser.all
  end
   def destroy
    @showusers=Showuser.find(params[:id])
    if @showusers.destroy
      flash[:notice] = "User successfully deleted"
    end
    redirect_to action: :index
    #results=ActiveRecord::Base.connection.execute("DELETE FROM showusers WHERE showusers.name ='#{params['name']}'")
  end
end