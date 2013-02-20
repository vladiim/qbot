module UserSignup
  def signup
  	visit root_path
  	fill_in 'user_username',              with: 'USERNAME'
  	fill_in 'user_email',                 with: 'USERNAME@email.com'
  	fill_in 'user_password',              with: 'password'
  	fill_in 'user_password_confirmation', with: 'password'
  	click_button 'Sign Up For Free'
  	@user = User.last
  end
end