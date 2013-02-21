require_relative '../spec_helper'

describe User do

  describe 'db_columns' do
    it { should have_db_column(:username) }
    it { should have_db_column(:email) }
    it { should have_db_column(:crypted_password) }
    it { should have_db_column(:password_salt) }
    it { should have_db_column(:perishable_token) }
    it { should have_db_column(:persistence_token) }
  end

  describe 'validations' do
  	context 'with username and email' do
  	  let (:user) { User.new(username: 'name', email: 'blah@email.com') }

  	  it 'validates username is unique' do
  	  	user.should validate_uniqueness_of :username
  	  end

  	  it 'validates email is unique' do
  	  	user.should validate_uniqueness_of :email
  	  end

      it 'validates username is present' do
      	user.should validate_presence_of :username
      end

      it 'validates email is present' do
      	user.should validate_presence_of :email
      end
  	end

  	it { should validate_presence_of(:password) }
  	it { should validate_confirmation_of(:password) }
  end

  describe 'associations' do
  	it { should have_many(:surveys) }
  end
end