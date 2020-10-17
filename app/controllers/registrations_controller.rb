class RegistrationsController < Devise::RegistrationsController 

=begin
		Below code can be used to make the cart persist after logout, but this is faulty
		as it persists inbetween users. It accounts for a SESSION

		def destroy
				cart_id = session[:cart_id] 
				super  
				session[:cart_id] = cart_id
		end
=end
	private

	# def sign_up_params 
	# 	params.require(:student).permit(:name, :email, :phone_number, :address, :major, :cc_name, :cc_number, :cc_exp_date, :cc_cvv, :password, :password_confirmation)
	# 	# params.require(:teacher).permit(:name, :email, :phone_number, :address, :discipline, :password, :password_confirmation)
	# 	# params.require(:admin).permit(:name, :email, :phone_number, :address, :password, :password_confirmation)
	# end

	# def acount_update_params 
	# 	if admin_signed_in?
	# 		params.require(:admin).permit(:name, :phone_number, :address)
	# 	end
	# 	if student_signed_in?
	# 		params.require(:student).permit(:name, :email, :phone_number, :address, :major, :cc_name, :cc_number, :cc_exp_date, :cc_cvv, :password, :password_confirmation, :current_password)
	# 	end
	# 	if teacher_signed_in?
	# 		params.require(:teacher).permit(:name, :email, :phone_number, :address, :discipline, :password, :password_confirmation)
	# 	end
		
	# end

end
