module ApplicationHelper
  def check_owner?
    if @user.id != current_user.id
      redirect_to root_path
    end
  end 

end
