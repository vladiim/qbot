require 'spec_helper'

describe 'Marketing Homepage', :focus => true do
  before { visit root_path }

  it 'has the right intro content' do
  	page.should have_content 'Real Time Collaboration With Your Audience'
  end

  it 'has the right nav' do
    within('.nav') do
      page.should have_content 'Register'
      page.should have_content 'Demo'
    end
  end
end