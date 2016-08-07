class TestController < ApplicationController
  def test
    return render_401 unless current_user 
      
    render json: {
      payload: {
        time: Time.now.to_i 
      }
    }
  end
  
  protected
  
  def render_401
    render json: { errors: ['not authorized'] }, status: 401
  end
end
