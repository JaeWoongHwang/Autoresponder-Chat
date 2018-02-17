class KakaoController < ApplicationController
  def keyboard
   @keyboard = {
      :type => "text"
    }
    render json: @keyboard
  end

  def message
   @user_msg = params[:message]
   @message = @user_msg
   
   @message = {
     text: @msg
   }
   
   @standard_keyboard = {
     :type => "text"
   }
   
   @result = {
     message: @msg,
     keyboard: @standard_keyboard
   }
   
   render json: @result
  end
end
