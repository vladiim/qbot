require_relative '../../spec_helper'

describe 'Sign up' do
  it 'creates a new user' do
  	visit root_path
  	fill_in 'user_username',              with: 'USERNAME'
  	fill_in 'user_email',                 with: 'USERNAME@email.com'
  	fill_in 'user_password',              with: 'password'
  	fill_in 'user_password_confirmation', with: 'password'
  	click_button 'Sign Up For Free'
  	page.should have_content "Congrats USERNAME! Your account has been created!"
  	User.last.username.should eq 'USERNAME'
  end
end