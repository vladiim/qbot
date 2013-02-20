require_relative '../../spec_helper'

describe 'Sign up' do
  it 'creates a new user' do
  	visit root_path
  	fill_in 'username', with: 'USERNAME'
  	click_button 'Sign Up For Free'
  	User.last.username.should eq 'USERNAME'
  end
end